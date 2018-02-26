#include <util/terminal.h>

#include <rtems.h>
#include <bsp.h>
#include <stdint.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

void terminal_setup(const char* dev, int baud)
{
	int fd;
	struct termios term;
	fd = open(dev, O_RDWR);
	/* Get current configuration */
	tcgetattr(fd, &term);

	cfsetospeed(&term, baud);
	cfsetispeed(&term, baud);
	// No parity check, force 8-bit character size
	term.c_cflag &= ~(CSIZE | PARENB);
	term.c_cflag |= CS8;
	tcsetattr(fd, TCSANOW, &term);
	close(fd);
	printf("Configured %s to baud %i\n", dev, baud);
}
