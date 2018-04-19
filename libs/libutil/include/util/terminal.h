
/**
 * Produce console device name in buf.
 * Recommended buf size is 16 bytes.
**/
void get_console_dev_name(char* buf, int console_id);
/**
 * Initialize selected terminal device using:
 * 8-bit, no parity, 1 stop bit, and a selected baud rate
 * It can return opened fd handle.
**/
int terminal_setup(const char* dev, int baud, int leave_open);

