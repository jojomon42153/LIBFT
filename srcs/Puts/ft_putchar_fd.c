/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_putchar_fd.c                                  .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 21:22:57 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2017/12/28 22:14:08 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

static int	ft_put(unsigned char d, int fd)
{
	return (write(fd, &d, 1));
}

void		ft_putchar_fd(wchar_t c, int fd)
{
	int				ret;

	ret = 0;
	if (c <= 0x7F)
		ret += ft_put(c, fd);
	else if (c >= 0x80 && c <= 0x7FF)
	{
		ret += ft_put(0xC0 | (c >> 6), fd);
		ret += ft_put(0x80 | (0x3F & c), fd);
	}
	else if (c >= 0x800 && c <= 0xFFFF)
	{
		ret += ft_put(0xE0 | (0xF & (c >> 12)), fd);
		ret += ft_put(0x80 | (0x3F & (c >> 6)), fd);
		ret += ft_put(0x80 | (0x3F & c), fd);
	}
	else if (c >= 0x10000 && c <= 0x1FFFF)
	{
		ret += ft_put(0xF0 | (0x7 & (c >> 18)), fd);
		ret += ft_put(0x80 | (0x3F & (c >> 12)), fd);
		ret += ft_put(0x80 | (0x3F & (c >> 6)), fd);
		ret += ft_put(0x80 | (0x3F & c), fd);
	}
}
