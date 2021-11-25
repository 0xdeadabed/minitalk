/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 12:39:42 by hsabir            #+#    #+#             */
/*   Updated: 2021/11/25 15:02:29 by hsabir           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H

# include "../ft_printf/libft/libft.h"
# include "../ft_printf/ft_printf.h"
# include <stdint.h>
# include <signal.h>
# include <stdbool.h>
# include <stdlib.h>
# include <unistd.h>
# include <limits.h>

typedef struct	s_sigmessage
{
	char		*message;
	uint32_t	msg_len;
	uint32_t	msg_pos;
	pid_t		pid;
}	t_sigmessage;

#endif
