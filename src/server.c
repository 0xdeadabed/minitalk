/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 12:42:15 by hsabir            #+#    #+#             */
/*   Updated: 2021/11/25 14:40:07 by hsabir           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/minitalk.h"

void	handler_siguser1(int signum)
{
	printf("signal %d has been recived !\n", signum);
}

int	main()
{
	//struct sigaction	usr1;
	//struct sigaction	usr2;
	pid_t	pid;
	
	pid = getpid();
	ft_printf("PID: %d\n", pid);
	while (1)
		pause();
}
