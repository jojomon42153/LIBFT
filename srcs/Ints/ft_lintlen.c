/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_lintlen.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/01/24 01:55:25 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2018/03/12 20:31:49 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

int		ft_lintlen(long long int nb)
{
	int i;

	i = 0;
	if (nb < 0)
		i++;
	if (nb == 0)
		i++;
	while (nb)
	{
		nb /= 10;
		i++;
	}
	return (i);
}
