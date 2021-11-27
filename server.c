/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 12:42:15 by hsabir            #+#    #+#             */
/*   Updated: 2021/11/27 09:43:43 by hsabir           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
			exit (EXIT_SUCCESS);
		power = 0;
		byte = 0;
	}
}

int	main()
{
	pid_t	pid;
	
	pid = getpid();
	ft_printf("PID: %d\n", pid);
	signal(SIGUSR1, convert_msg);
	signal(SIGUSR2, convert_msg);
	while (1)
		pause();
}
