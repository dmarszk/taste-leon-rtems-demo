# Example TASTE project for LEON3
The project demonstrates direct calls to RTEMS LEON3 APB_UART and OC_CAN drivers. It makes an ugly and platform-locked code, but works.

The project also demonstrated build and use of external libraries, using both GNU Make and WAF.

## Getting Started
Before starting TASTE, bootstrap the project with:
taste-update-data-view

Then start TASTE with:
taste-edit-project

After regenerating skeletons, make sure to add
```
export PRJ_DIR=$CWD
```
under
```
CWD=$(pwd)
```
in the ```build-script.sh``` file. Otherwise, external libraries inclusion will fail.


## Task cycles
UART and CAN are supposed to operate in non-blocking mode.
Blocking calls are problematic inside PolyORB periodic tasks, because PolyORB tries to keep up the task invocation frequency.

Tick of UART function has been selected assuming
- 115200 baud with 8N1 framing,
- Interrupt mode,
- 256 byte RX FIFO inside kernel termios,
- 100% utilization + 10% margin.
```
T_UART = 1 / (115200 [bod/s] / 10 [bod/B] / 256 [B] * 1.1) = 0.020 [s] = 20 [ms]
```

Tick of CAN function has been selected assuming
- 1 Mbps
- Average frame size = 4 byte of data + long CAN ID
- 512 frame RX FIFO
- 100% utilization + 10% margin
- no bit stuffing
```
T_CAN = 1 / (1000000 [b/s] / (4 * 8 + 47) [b/frame] / 512 [frames] * 1.1) = 0.036 [s] = 36 [ms]
```

More robust design would have intermediate RTEMS tasks, operating in blocked mode on longer FIFOs, polled by PolyORB loops with lower frequency.

## Drivers configuration
systeminit/config.c is critical to configure LEON3 Driver Manager properly. Including loading OC_CAN driver.

## Quirks/TODO
systeminit is forced to be initialized by having a long-period dummy tick interface. This is very ugly.

ASN.1 representation of the CAN frame is very simplistic and does not support many functionalities that CAN allows.
Ideally it should reflect CANMsg struct.