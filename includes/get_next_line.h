/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hcabel <hcabel@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/11 18:17:31 by hcabel            #+#    #+#             */
/*   Updated: 2019/04/21 11:51:25 by hcabel           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# define BUFF_SIZE 3
# define GNL_ERROR -1
# define GNL_OK 1
# define GNL_END 0

# include <unistd.h>
# include "libft.h"
# include <stdlib.h>

/*
** STRUCT HAS ONLY INCUDE IN MY LIBFT.H
**typedef struct		s_gnl
**{
**	int				fd;
**	char			*line;
**	char			*temp;
**	struct s_gnl	*next;
**}					t_gnl;
*/

int					get_next_line(const int fd, char **line);

#endif
