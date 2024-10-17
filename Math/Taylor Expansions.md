

### Landau Comparators

$$ f(x) = o(g(x)) \implies \lim_{x\to x_0}\frac {f(x)}{g(x)} = 0 $$

$$ f(x) = O(g(x)) \implies \frac {f(x)}{g(x)} \text{ is bounded} $$

$$ f(x) \sim g(x) \implies \lim_{x\to x_0}\frac {f(x)}{g(x)} = 1 $$

### Taylor formulas
---

The Taylor formulas always starts like this, only the reminder varies.

$$ \sum_{0}^n \frac{f^{(n)}(a)}{n!}(x - a)^n $$

---
integral reminder
$$ \int_a^x \frac{f^{(n+1)}(t)}{n!}(x-t)^n dt $$
$f^{(n+1)}(c)$ reminder
$$ \frac {f^{(n+1)}(c)} {(n+1)!}(x-a)^{n+1} $$

or

$$ (x - a)^n\epsilon(x) $$
which tends to 0 therefore is neglectable

### Usual fonctions around 0

$$
e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots = \sum_{n=0}^{\infty} \frac{x^n}{n!}
$$

$$
\sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \cdots = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)!}
$$

$$
\cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \cdots = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n}}{(2n)!}
$$

$$
\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \frac{x^4}{4} + \cdots = \sum_{n=1}^{\infty} (-1)^{n+1} \frac{x^n}{n}
$$

$$
\arctan(x) = x - \frac{x^3}{3} + \frac{x^5}{5} - \frac{x^7}{7} + \cdots = \sum_{n=0}^{\infty} (-1)^n \frac{x^{2n+1}}{2n+1}
$$
