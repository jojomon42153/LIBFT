/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_putchar.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 21:22:56 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2018/01/18 16:49:33 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

static int	ft_put(unsigned char d)
{
	return (write(1, &d, 1));
}

int			ft_putchar(wchar_t c)
{
	int				ret;

	ret = 0;
	if (c <= 0x7F)
		ret += ft_put(c);
	else if (c >= 0x80 && c <= 0x7FF)
	{
		ret += ft_put(0xC0 | (c >> 6));
		ret += ft_put(0x80 | (0x3F & c));
	}
	else if (c >= 0x800 && c <= 0xFFFF)
	{
		ret += ft_put(0xE0 | (0xF & (c >> 12)));
		ret += ft_put(0x80 | (0x3F & (c >> 6)));
		ret += ft_put(0x80 | (0x3F & c));
	}
	else if (c >= 0x10000 && c <= 0xFFFFF)
	{
		ret += ft_put(0xF0 | (0x7 & (c >> 18)));
		ret += ft_put(0x80 | (0x3F & (c >> 12)));
		ret += ft_put(0x80 | (0x3F & (c >> 6)));
		ret += ft_put(0x80 | (0x3F & c));
	}
	return (ret);
}
