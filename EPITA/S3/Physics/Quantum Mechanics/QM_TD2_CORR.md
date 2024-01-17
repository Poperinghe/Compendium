#WIP 

**Linked Subject:** [[QM_TD2_SUBJ.pdf]] 
### Reminder
According to the Bohr model presented in 1913, all atoms are made up of three types of (subatomic) particles: protons, electrons, and neutrons. 
### Subatomic Particles
> Proton: particle with a positive electric charge ($+e$).
> Electrons: particle with negative electric charge ($-e$).
> Neutron: particle with neutral (zero) charge.

**The elementary charge:** $e = 1.602 \times 10^{-19}C$

![[NielsBohrAtom.png]]

In this model the atom has two main parts, the nucleus and the electron cloud. The nucleus is made of protons and neutrons, and the electron cloud refers to all the electrons orbiting the nucleus. It is important to note that in their natural state atoms always have the same number of protons and electrons (nature always looks for balance so the total charge of the atom has to be zero). This model is the basis of all modern chemistry and still rooted in classical physics.

### Exercise 1: Bohr's Atomic Model

#### Notation
> $m$ : mass of the electron ($kg$)
> $v$ : speed of the electron ($m \cdot s^{-1}$)
> $p$ : momentum of the electron ($kg \cdot m \cdot s^{-1}$)
> $r$ : radius of the electron's orbit ($m$)
> $E$ : energy of the electron ($J$ or $eV$)

#### Constants
> Planck's constant : $h = 6.626 \cdot 10^{-34} \; m^2 \cdot kg \cdot s^{-1}$
> Coulomb's constant : $k = 8,987 \cdot 10^9 \; N \cdot m^2 \cdot C^{-2}$

#### Intro
The important detail that brings this into the field of Quantum Mechanics is the idea of ***quantized*** electron layers. Electrons don't all orbit the nucleus at the same altitude, and moreover the altitude of their orbit is not directly proportional to the particle's energy. Bohr's model states that an electron can only orbit the nucleus at **strict** given altitudes called "layers", and electrons hop between these layers as their energy changes.

![[QuantizedElectronLayers.png]]

#### Questions

1) Just simple arithmetic here starting with Bohr's 3rd postulate: 

$$\Large mrv = n\frac{h}{2\pi}$$
$$\Large \Leftrightarrow mv = n\frac{h}{2\pi r}$$

2) The Coulomb force between an electron and a proton can be found in the previous chapter on Electromagnetism (See:[[EM_LECTURE.pdf]])

$$\Large \lvert \lvert F\;_{H+/e-} \rvert \rvert = \lvert k\frac{q_{1} \cdot q_{2}}{r^2} \rvert$$
	Here $q_1$ and $q_2$ refer to the two charged particles, in our case an electron and a proton of opposite but equal charge $q$ (the elementary charge).
$$\Large \Leftrightarrow \lvert \lvert F\;_{H+/e-} \rvert \rvert = \lvert k\frac{(+q) \cdot (-q)}{r^2} \rvert$$
$$\Large \Leftrightarrow \lvert \lvert F\;_{H+/e-} \rvert \rvert = \frac{kq^2}{r^2}$$
$$\Large \Leftrightarrow \lvert \lvert F\;_{H+/e-} \rvert \rvert = \frac{e^2}{r^2}$$

3) The only real difficulty here is to recall Newton II: 
$$\Large F = ma$$
	And while it is not difficult to explain, we will just accept that in the context of a perfectly circular orbit such as this one $a = \frac{v^2}{r}$
$$\Large \Leftrightarrow F = m\frac{v^2}{r}$$
	We can then reintroduce the equivalence that was proved in the previous question: $F = \frac{e^2}{r^2}$
$$\Large \Leftrightarrow \frac{e^2}{r^2} = \frac{mv^2}{r}$$
$$\Large \Leftrightarrow \frac{e^2}{r} = mv^2$$

4) First we start with a system of equations using the two equivalences proved in the previous questions:
$$\Large 
\begin{cases}
mv =  n\frac{h}{2\pi r}\\ \\
mv^2 = \frac{e^2}{r}
\end{cases}
$$
$$\Large \Leftrightarrow
\begin{cases}
(mv)^2 =  n^2\frac{h^2}{4\pi^2 r^2}\\ \\
(mv)^2 = \frac{me^2}{r}
\end{cases}
$$
$$\Large \Rightarrow \frac{n^2h^2}{4\pi^2r^2} = \frac{me^2}{r}$$
$$\Large \Rightarrow n^2\frac{h^2}{4\pi^2r} = me^2$$
$$\Large \Rightarrow n^2 \cdot\frac{h^2}{4\pi^2me^2} = r$$
	Once we have this form we can realize that $h, 4, \pi, m$ and $e$ are all constants. Therefore the huge fraction that we have on the left of our equation is just a constant that we will now refer to as $a_0$ or Bohr's radius.
$$\Large \Rightarrow n^2 \cdot a_0 = r_n$$

5) Once again we need to recall a theorem from previous chapters regarding the energy of the electron:
$$\Large E = E_c + E_p$$
$$\Large \Leftrightarrow E = \frac{1}{2}mv^2 + \frac{k \cdot q_{proton} \cdot q_{electron}}{r}$$
$$\Large \Leftrightarrow E = \frac{e^2}{2r} - \frac{kq^2}{r}$$
$$\Large \Leftrightarrow E = \frac{e^2}{2r} - \frac{e^2}{r}$$
$$\Large \Leftrightarrow E = - \frac{e^2}{2r}$$
6) Here we take the expression from the previous question and replace $r$ with the result from question 4.
$$\Large E_n = - \frac{e^2}{2r_n}$$
$$\Large \Leftrightarrow E_n = -\frac{e^2}{2a_0n^2}$$
$$\Large \Leftrightarrow E_n = \frac{-\frac{e^2}{2a_0}}{n^2}$$
$$\Large \Leftrightarrow E_n = \frac{cste}{n^2}$$

### Exercise 2: Electronic Transitions

#### Notation
> $E_n$ : energy of the electron on layer $n$
> $\Delta E$ : change in energy (electron)
> $\lambda$ : wavelength of the emitted/absorbed photon ($m$)

#### Constants
> Speed of light (in empty space) : $c = 299\;792\;458 \; m \cdot s^{-1}$
> Planck's constant : $h = 6.626 \cdot 10^{-34} \; m^2 \cdot kg \cdot s^{-1}$

#### Intro
As mentioned before electrons can hop between orbit layers as their energy changes. For example when an electron on orbit layer 3 loses enough energy it will hop to layer 2, however thermodynamics tells us that this energy that was lost has to go somewhere so the atom emits a photon (light) at a certain frequency depending on how much energy was lost. This also works in reverse, when an atom receives light at a certain wave length, an electron will absorb this energy and hop to a higher orbit layer.

![[QuantumEnergyLevels.png]]

1) The fundamental energy level is layer $n=1$ and the zero energy state is reached when the electron hops though all layers and escapes the atom completely. This atom is ionized.

2) Here we use the Planck-Einstein relation:

$$\Large E = h\nu$$
$$\Large \Leftrightarrow E = \frac{hc}{\lambda}$$
	Here $E$ refers to the energy of the photon emitted. However we know from thermodynamics that this amount of energy is equal to the change in the electron's energy $\Delta E$
$$\Large \Leftrightarrow \Delta E = \frac{hc}{\lambda}$$
$$\Large \Leftrightarrow \lambda = \frac{hc}{\Delta E}$$
	Be careful $\Delta E$ needs to be in S.I. units (Joules)

$$\Large \Leftrightarrow \lambda = 619\;nm$$

Taking the image above for reference we can see that this transition belongs to the Balmer series.

3) Same as previous question the other way around:

$$\Large \Delta E = \lvert E_2 - E_3 \rvert$$
$$\Large \Delta E = 12.09 \; eV$$

Then we plug this value into our formula:

$$\Large \lambda = \frac{hc}{\Delta E}$$
$$\Large \lambda = 97\;nm$$

4) To go from the ground state to the zero energy state we need to supply the electron with at least $13.6 \; eV$ of energy. (This is equivalent to a photon of wavelength $\lambda \geqslant 91 \; nm$).

### Exercise 3: Particle Uncertainty

### Notation
> $\lambda$ : wavelength of the particle/wave ($m$)
> $p$ : momentum of the particle ($kg \cdot m \cdot s^{-1}$)
> $m$ : mass of the particle ($kg$)
> $v$ : speed of the particle ($m \cdot s^{-1}$)
> $x$ : particle's position (1 dimension)
> $\Delta?$ : prefix meaning uncertainty (ex: $\Delta x$ = uncertainty regarding position)

### Constants
> Planck's constant : $h = 6.626 \cdot 10^{-34} \; m^2 \cdot kg \cdot s^{-1}$
> Planck's constant normalized : $\hbar = \frac{h}{2\pi}$

### Intro
In this exercise we are just looking at the laws regarding the uncertainties in quantum physics. The questions are really just a numerical application of formulas, the **intent** and difficulty of the exercise is to interpret these results.

1) You have probably heard that light is an electromagnetic wave, but we also often talk about photons being particles of light. What we will see in this exercise is that the smaller a particle is (not only photons but any particle) the more valid it becomes to interpret it as an electromagnetic wave. We start with De Broglie's relation that gives us the wavelength of the particle considered as a wave: 

$$\Large \lambda = \frac{h}{p}$$
$$\Large \Leftrightarrow \lambda = \frac{h}{mv}$$

| | mass | equivalent wavelength |
| --- | :---: | :---: |
| electron |  $9.1 \cdot 10^{-31} \; kg$ | $7656 \;nm$ |
| tennis ball | $0.05 \; kg$ | $1.39 \cdot 10^{-34} \; nm$ |

![[ElectromagSpectrumAnnotated.jpg]]

- Electron: According to our formula, an electron travelling in a straight line at $95 \; m \cdot s^{-1}$ would be equivalent to an X-ray or ultraviolet electromagnetic wave... Yeah I could see that, after all why not. This result seems reasonable.

- Tennis ball: However here the equivalent wave would have a wavelength of $1.39 \cdot 10^{-34} \; nm$, a value so small that it is orders of magnitude away from even being referenced on our diagram. This value is so small that we can consider it to be zero, and a wave with a wavelength of zero is not a wave at all. This is coherent because it just so happens that a tennis ball is a macroscopic object that has absolutely none of the properties of an electromagnetic wave.

In conclusion these results don't tell us anything that we didn't already know but it goes to show that the both the assimilation of a particle to a wave and our formula are coherent with reality. Large macroscopic objects are definitely not waves but as we get closer to subatomic particles the line begins to blur.

2) Heisenberg's uncertainty principle states that we can not know the speed and the position of a particle simultaneously. This property is quantified by the inequation:

$$\Large \Delta x \Delta p \geqslant \frac{\hbar}{2}$$
$$\Large \Leftrightarrow \Delta x \Delta (mv) \geqslant \frac{\hbar}{2}$$
	however the uncertainty regarding the mass of the object is zero, it is is a constant for particles like electrons so there is no uncertainties to be had. Therefore we can say that $\Delta (mv) = m \Delta v$

$$\Large \Leftrightarrow \Delta x \geqslant \frac{\hbar}{2m\Delta v}$$

| | mass | position uncertainty |
| --- | :---: | :---: |
| electron |  $9.1 \cdot 10^{-31} \; kg$ | $\geqslant 0.07$ |
| tennis ball | $0.05 \; kg$ | $\geqslant 1.24 \cdot 10^{-34}$ |

**This part is where the wording gets tricky.**

- Tennis ball: The uncertainty on the position of the ball is greater or equal to $1.24 \cdot 10^{-34}$ (an incredibly small value that we will consider to be zero). So in the best possible case we can be confident with zero degree of uncertainty of the tennis ball's position. This result seems obvious enough.

- Electron: However for the electron, **even in the best possible case** we are going to be unsure of its position **at least** by 7%. This value can also seem quite small but it is definitely not negligible unlike the tennis ball.

Once again, none of these results are a really different from what we expected but it goes to show that our formula and the uncertainty principle are coherent with reality. For large objects we can always be sure of both their speed and position without issue but as we get closer to subatomic particles, this becomes a real issue.