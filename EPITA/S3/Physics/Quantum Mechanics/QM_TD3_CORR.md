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
Now that we know what a wave function is and what it can be used for, we will look at finding the expression of the wave function in a given situation.