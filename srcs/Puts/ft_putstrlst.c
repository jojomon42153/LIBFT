/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_putstrlst.c                                   .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/03/30 18:43:18 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2018/03/30 18:43:21 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void	ft_print_strlst(t_list **alst)
{
	t_list	*ptr;
	int		i;

	i = 0;
	ptr = *alst;
	while (ptr != NULL)
	{
		if (i == 0)
			ft_putstr("Begin list\n");
		ft_putstr("\nmaillon ");
		ft_putnbr(i);
		ft_putstr("\ncontent : ");
		ft_putstr(ptr->content);
		ft_putstr("\nsize : ");
		ft_putnbr(ptr->content_size);
		ft_putchar('\n');
		i++;
		ptr = ptr->next;
	}
	ft_putstr("\nEnd list");
}
