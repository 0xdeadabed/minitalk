#include "minitalk.h"

void	convert_msg(int signum)
{
	static int	power;
	static int	byte;

	if (signum == SIGUSR1)
		byte += 1 << (31 - power);
	power++;
	if (power == 32)
	{
		ft_printf("%c", byte);
		if (byte == '\0')
		{
			exit (EXIT_SUCCESS);
		}
		power = 0;
		byte = 0;
	}
}

int	main()
{
	//struct sigaction	usr1;
	//struct sigaction	usr2;
	pid_t	pid;
	
	pid = getpid();
	ft_printf("PID: %d\n", pid);
	signal(SIGUSR1, convert_msg);
	signal(SIGUSR2, convert_msg);
	while (1)
		pause();
}
