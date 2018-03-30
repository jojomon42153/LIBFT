/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strtrim.c                                     .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: jmonneri <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2017/11/29 21:23:10 by jmonneri     #+#   ##    ##    #+#       */
/*   Updated: 2017/11/29 21:23:10 by jmonneri    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim(char const *s)
{
	size_t	i;
	size_t	size;

	if (s == 0)
		return (NULL);
	size = ft_strlen(s) - 1;
	i = 0;
	while (s[i] == ' ' || s[i] == '\n' || s[i] == '\t')
		i++;
	if (s[i] == '\0')
		return (ft_strdup("\0"));
	while (s[size] == ' ' || s[size] == '\n' || s[size] == '\t')
		size--;
	return (ft_strsub(s, i, size - i + 1));
}
