/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 12:42:22 by hsabir            #+#    #+#             */
/*   Updated: 2021/12/01 09:05:29 by hsabir           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	convert_char(char c, int pid)
{
	int	i;

	i = 31;
	while (i >= 0)
	{
		if (c >> i & 1)
			kill(pid, SIGUSR1);
		else
			kill(pid, SIGUSR2);
		usleep(100);
		i--;
	}
}

int	main(int argc, char **argv)
{
	int	pid;
	int	i;

	i = 0;
	pid = ft_atoi(argv[1]);
	if (argc != 3 || pid == 0)
	{
		ft_printf("\033[0;31mInvalid arguments! \033[0m\n");
		exit(EXIT_FAILURE);
	}
	while (argv[2][i])
		convert_char(argv[2][i++], pid);
	exit (EXIT_SUCCESS);
}
