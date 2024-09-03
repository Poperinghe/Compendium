#WIP 

**Linked Subject:** [[QM_TD3_SUBJ.pdf]]
### Context
Up to this point we have talked about electrons within the atom, and Heisenberg's uncertainty principle. The goal of this TD is to talk about the "particle in a box" problem. According to quantum mechanics, since we cannot know where the particle is accurately (Heisenberg) we have to calculate it's position with a probabilistic approach. Moreover we will also see that placing the particle in the box inherently gives it energy.

### Exercise 1: Wave Functions

#### Notation
> $x$ : position of the particle (1 dimensional)
> $P$ : probability of finding the particle in a given range
> $\Psi$ : wave function
> $\Psi_0$ : a constant to be determined
> $x_0$ : a fixed constant

#### Intro
In this exercise all we are doing is exploring the usage of the wave function and how it allows us to calculate probabilities.

1) The main formula we will need to remember is:

$$\Large P = \int_\limits{0}^{+\infty}\lvert\Psi(x)^2\rvert\;dx$$
$$\Large \Leftrightarrow P = \int_\limits{0}^{+\infty}\Psi_0^2\;e^{-\frac{2x}{x_0}}\;dx$$
$$\Large = \Psi_0^2\int_\limits{0}^{+\infty}e^{-\frac{2x}{x_0}}\;dx$$
	change of variable: $\large y = \frac{2x}{x_0}$
$$\Large = \Psi_0^2\int_\limits{0}^{+\infty}e^{-y}\;(dy\cdot\frac{x_0}{2})$$
$$\Large = \Psi_0^2\;\frac{x_0}{2}\int_\limits{0}^{+\infty}e^{-y}\;dy$$
$$\Large = \frac{\Psi_0^2x_0}{2}\left[-e^{-y} \right]_{0}^{+\infty}$$
$$\Large = \frac{\Psi_0^2x_0}{2}(-e^{-\infty} - (-e^0))$$
$$\Large = \frac{\Psi_0^2x_0}{2}(0 + 1)$$
$$\Large = \frac{\Psi_0^2x_0}{2}$$

2) So we have already determined that the probability of finding the particle between $0$ and $+\infty$ is $\large\frac{\Psi_0^2x_0}{2}$. However it just so happens that the bounds of our box are $0$ and $+\infty$, and the probability of finding the particle in the box is $1$ so:

$$\Large \frac{\Psi_0^2x_0}{2}=1$$
$$\Large \Leftrightarrow \Psi_0=\sqrt{\frac{2}{x_0}}$$

3) We will follow the exact same kind of development as in question 1:

$$\Large P = \int_\limits{0}^{A}\lvert\Psi(x)^2\rvert\;dx$$
$$\Large \Leftrightarrow P = \int_\limits{0}^{A}\Psi_0^2\;e^{-\frac{2x}{x_0}}\;dx$$
$$\Large = \int_\limits{0}^{A}\sqrt{\frac{2}{x_0}}^2\;e^{-\frac{2x}{x_0}}\;dx$$
$$\Large = -\int_\limits{0}^{A}-\frac{2}{x_0}\;e^{-\frac{2x}{x_0}}\;dx$$
$$\Large = -\left[e^{-\frac{2x}{x_0}}\right]_0^A$$
$$\Large = -(e^{-\frac{2A}{x_0}}-1)$$
$$\Large = 1-e^{-\frac{2A}{x_0}}$$

4) Using our previous result:

$$\Large P \geqslant 0.95$$
$$\Large \Leftrightarrow 1-e^{-\frac{2A}{x_0}} \geqslant 0.95$$
$$\Large \Leftrightarrow e^{-\frac{2A}{x_0}} \leqslant 0.05$$
$$\Large \Leftrightarrow -\frac{2A}{x_0} \leqslant ln(0.05)$$
$$\Large \Leftrightarrow -\frac{2A}{x_0} \leqslant -3$$
$$\Large \Leftrightarrow A \geqslant \frac{3x_0}{2}$$

### Exercise 2: Infinite Potential Quantum Well

#### Notation

#### Constants

#### Intro
Now that we know what a wave function is and what it can be used for, we will look at finding the expression of the wave function in a given situation, the "particle in a box" problem.

1) Starting with the Schrodinger equation:
$$\Large H\Psi = E\Psi$$
$$\Large \Leftrightarrow(-\frac{\hbar^2}{2m}\Delta + V)\Psi = E\Psi$$
	in this context we already know that the particle is in the box and we are told that $V(x) = 0$ for any $x$ in the box, so it is always going to be 0 in the context of the exercise
	also we are in a 1 dimensional context so the Laplace operator is $\frac{d^2}{dx^2}$
$$\Large \Leftrightarrow(-\frac{\hbar^2}{2m}\cdot\frac{d^2}{dx^2} + 0)\Psi = E\Psi$$
$$\Large \Leftrightarrow-\frac{\hbar^2}{2m}\cdot(\frac{d^2\Psi}{dx^2}) = E\Psi$$
2) Continuing with the result of the previous question:
$$\Large \Leftrightarrow -\frac{\hbar^2}{2m}\cdot\frac{\Psi''}{\Psi} = E$$
$$\Large E = E_c + E_p$$
	as we already said previously the potential of the particle is nil, so its potential energy is also $0$
$$\Large \Leftrightarrow E = \frac{1}{2}mv^2 +0$$
$$\Large \Leftrightarrow E = \frac{(mv)^2}{2m}$$
$$\Large \Leftrightarrow E = \frac{p^2}{2m}$$
> [!tip] $$\Large \lambda = \frac{h}{p}$$
> $$\Large \Leftrightarrow p = \frac{h}{\lambda}$$
> $$\Large \Leftrightarrow p = \frac{h}{2\pi}\cdot\frac{2\pi}{\lambda}$$
> and we'll just say for the sake of cleanliness that $\frac{2\pi}{\lambda} = k$$$\Large \Leftrightarrow p = \hbar k$$

$$\Large \Leftrightarrow E = \frac{\hbar^2 k^2}{2m}$$

and now we can finally come back to our main expression
$$\Large \Leftrightarrow -\frac{\hbar^2}{2m}\cdot\frac{\Psi''}{\Psi} = \frac{\hbar^2 k^2}{2m}$$
$$\Large \Leftrightarrow -\frac{\hbar^2}{2m}\cdot\frac{\Psi''}{\Psi} - \frac{\hbar^2 k^2}{2m} = 0$$
$$\Large \Leftrightarrow \Psi'' + \Psi k^2 = 0$$
Now we have a clean expression of our differential equation and we will affirm without proof that the general expression of the solution of this equation is:
$$\Large \Psi(x) = Asin(kx) + Bcos(kx)$$
3) Because our wave function is differentiable at least once, we also know that it is continuous between $0$ and $L$. As we get closer to the edges of the box, the probability of finding the particle decreases to the point where the probability outside the box is 0. From these two pieces of information we know that on the edges of the box, i.e. $x=0$ or $x=L$, $\Psi(x)=0$.
$$\Large \Psi(0)=Asin(k\cdot0) + Bcos(k\cdot0) = 0$$
$$\Large \Leftrightarrow0 + B\cdot1 = 0$$
$$\Large \Leftrightarrow B=0$$

$$\Large \Psi(L)=Asin(k\cdot L) + 0\cdot cos(k\cdot L) = 0$$
$$\Large \Leftrightarrow Asin(k\cdot L) = 0$$
here we have to reflect a little bit and say that we know that $\Psi(x)$ is not always $0$, or else it would be equivalent to saying that the probability of finding the particle anywhere in the box is $0$, or, the particle doesn't exist. So we know that $A\ne0\Rightarrow sin(k\cdot L) = 0$.

$$\Large \Rightarrow kL = n\pi$$
> $n \in \mathbb{N}$

$$\Large \Leftrightarrow k = \frac{n\pi}{L}$$

$$\Large \Rightarrow \Psi(x) = Asin(\frac{n\pi}{L}x)$$
4) to determine the last constant $A$ from our previous expression we will use the same property as in exercise 1:

$$\Large P =\int_\limits{0}^{L} \lvert\Psi(x)\rvert^2\;dx = 1 $$
$$\Large \Leftrightarrow A^2\int_\limits{0}^{L} sin^2(\frac{n\pi}{L}x) \;dx = 1 $$
	here we use a trigonometric property: $sin^2(x) = \frac{1-cos(2x)}{2}$
$$\Large \Leftrightarrow \frac{A^2}{2}\int_\limits{0}^{L} 1-cos(\frac{2n\pi}{L}x) \;dx = 1 $$
$$\Large \Leftrightarrow \frac{A^2}{2}(L-0) = 1$$
$$\Large \Leftrightarrow \frac{A^2L}{2} = 1$$
$$\Large \Leftrightarrow A = \sqrt{\frac{2}{L}}$$
So now we finally have our full expression of the wave function:
$$\Large \Psi(x) = \sqrt{\frac{2}{L}}sin(\frac{n\pi}{L}x)$$
5) Let's come back to our developed Schrodinger equation:
$$\Large -\frac{\hbar^2}{2m}\cdot\frac{\Psi''}{\Psi} = E$$
and start by differentiating the wave function:
$$\Large \Psi'(x) = \sqrt{\frac{2}{L}}\cdot\frac{n\pi}{L}\cdot cos(\frac{n\pi}{L}x)$$
$$\Large \Psi''(x) = \sqrt{\frac{2}{L}}\cdot\frac{n^2\pi^2}{L^2}\cdot -sin(\frac{n\pi}{L}x)$$
<br>
then we can just slot it in:
$$\Large \Rightarrow -\frac{\hbar^2}{2m}\cdot\frac{\sqrt{\frac{2}{L}}\cdot\frac{n^2\pi^2}{L^2}\cdot -sin(\frac{n\pi}{L}x)}{\sqrt{\frac{2}{L}}sin(\frac{n\pi}{L}x)} = E$$
$$\Large \Leftrightarrow \frac{\hbar^2}{2m}\cdot\frac{\frac{n^2\pi^2}{L^2}\cdot sin(\frac{n\pi}{L}x)}{sin(\frac{n\pi}{L}x)}$$
$$\Large \Leftrightarrow \frac{\hbar^2n^2\pi^2}{2mL^2} = E$$

Here we have our final expression of the particle's energy, as a function of constants: $\hbar, \pi, m, L$ and an extra value $n$. Tracing back to where we introduced $n$ we will find that it introduces the quantization of position probability inside the quantum well. This is what we call quantum numbers.

6) Alright so go fuck yourself i aint gonna do that...


### Exercise 3: Infinite potential quantum well in 3 Dimensions

#### Notation
#### Constants
#### Intro
This exercise is almost exactly the same as the previous one we'll just have to divide the wave function into its $x, y$ and $z$ components and do the same development as before. For the sake of simplicity we'll only do the development once for the $x$ component.

1) Schrodinger's equation:
$$\Large H\Psi = E\Psi$$
$$\Large \Leftrightarrow (-\frac{\hbar^2}{2m}\Delta + V)\Psi = E\Psi$$
> just like before we know our potential $V$ is $0$
$$\Large \Leftrightarrow -\frac{\hbar^2}{2m}\cdot(\frac{d^2\Psi}{dx^2}+\frac{d^2\Psi}{dy^2}+\frac{d^2\Psi}{dz^2}) = E\Psi$$
> and here we will make the assumption that the wave function $\Psi(x,y,z)$ is the product of three functions: $X(x)\cdot Y(y)\cdot Z(z)$
$$\Large \Leftrightarrow -\frac{\hbar^2}{2m}\cdot(YZ\frac{d^2X}{dx^2}+XZ\frac{d^2Y}{dy^2}+XY\frac{d^2Z}{dz^2}) = EXYZ$$
$$\Large \Leftrightarrow -\frac{\hbar^2}{2m}\cdot(\frac{X''}{X}+\frac{Y''}{Y}+\frac{Z''}{Z}) = E$$
$$ \Large \Leftrightarrow
\begin{cases}
-\frac{\hbar^2}{2m}\cdot \frac{X''}{X} = E_x\\
-\frac{\hbar^2}{2m}\cdot \frac{Y''}{Y} = E_y\\
-\frac{\hbar^2}{2m}\cdot \frac{Z''}{Z} = E_z\\
\end{cases}
$$
2) The quantum numbers are $n, p, q$.
3) 

