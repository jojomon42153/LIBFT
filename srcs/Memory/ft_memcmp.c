/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_memcmp.c                                      .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 21:22:54 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2017/11/29 21:22:54 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

int		ft_memcmp(const void *s1, const void *s2, size_t n)
{
	unsigned char	*s01;
	unsigned char	*s02;

	s02 = (unsigned char *)s2;
	s01 = (unsigned char *)s1;
	while (n > 0)
	{
		if (*s01 != *s02)
			return ((unsigned char)*s01 - (unsigned char)*s02);
		s01++;
		s02++;
		n--;
	}
	return (0);
}
