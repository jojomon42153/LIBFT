/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_memccpy.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 21:22:53 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2017/11/29 21:22:53 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	unsigned char	*d;
	unsigned char	*s;
	size_t			i;
	unsigned char	c_cpy;

	i = 0;
	d = (unsigned char*)dst;
	s = (unsigned char*)src;
	c_cpy = (unsigned char)c;
	while (i < n)
	{
		*d = *s;
		if (*s == c_cpy)
			return ((unsigned char*)dst + i + 1);
		d++;
		s++;
		i++;
	}
	return (NULL);
}
