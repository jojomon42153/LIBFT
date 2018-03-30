/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_memalloc.c                                    .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 21:22:53 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2017/11/29 21:22:53 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memalloc(size_t size)
{
	char *m;

	if (!(m = malloc(sizeof(size_t) * size)))
		return (NULL);
	while (size > 0)
		m[--size] = 0;
	return ((void *)m);
}
