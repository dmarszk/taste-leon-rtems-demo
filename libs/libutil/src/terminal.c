#include <util/terminal.h>

#include <rtems.h>
#include <bsp.h>
#include <stdint.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

void get_console_dev_name(char* buf, int console_id)
{
  if (console_id > 0)
  {
    sprintf(buf, "/dev/console_%c", 'a' + (char)console_id);
  }
  else
  {
    strcpy(buf, "/dev/console");
  }
}

int terminal_setup(const char* dev, int baud, int leave_open)
{
	int fd;
	struct termios term;
	fd = open(dev, O_RDWR);
  if (fd < 0)
    return fd;
	/* Get current configuration */
	tcgetattr(fd, &term);

	cfsetospeed(&term, baud);
	cfsetispeed(&term, baud);
	// No parity check, force 8-bit character size
	term.c_cflag &= ~(CSIZE | PARENB);
  // No echo
  term.c_cflag &= ~(ICANON|ECHO|ECHOE|ECHOK|ECHONL|ECHOPRT|ECHOCTL|ECHOKE);
  // 8 bits per character
	term.c_cflag |= CS8;
  // No flow control
	term.c_cflag |= CLOCAL;
	tcsetattr(fd, TCSANOW, &term);
  if (!leave_open)
  {
    close(fd);
    fd = -2;
  }
	printf("Configured %s to baud %i\n", dev, baud);
  return fd;
}
