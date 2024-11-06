Signal: The measurement of a displacement caused by a wave on a value over time (or space). 

Deterministic = perfect model of a signal
Stochastic = measured signal (impacted by noise and real world imperfections)

$L^1(R)$ functions that give a finite number where you can integrate the absolute value squared of the function on $R$.

> [!warning] REVISE THE SYMMETRY PROPERTIES OF THE CONVOLUTION OPERATOR FOR THE EXAM

...

## Example of Radar Detection (Cross Correlation)

We have a signal sent at an object in the sky at time $t_0$ and an echo signal that resembles the original with noise, its amplitude is reduced, and the signal has been shifted in time (it took some time to make the journey to the object and then to come back).

We have these two signals and we want to calculate the offset between the two signals (basically the time that the signal took to make its trip).

$$\LARGE 
\unicode{0x0393}(\tau)=
\langle x(t), y(t - \tau)\rangle=
\int_R{x(t), \overline{y(t - \tau)} dt}
$$

Note: The inner product of two vectors denoted by $\langle.,.\rangle$ represents the similarity of these two vectors. It will be at a maximum when the two vectors are equal.

If your function $\unicode{0x0393}(\tau)$ does not have finite energy like for example sin and cosine (meaning that the integral on R of the function is infinite) then you can do the average energy -> see formula in slides.

This whole method that we just described is the calculation of the cross correlation between two signals.

> [!info] Window function = port function = boxcar funtion = rectangle function = pulse funcion (these are all notations for the same thing).

$x\in L^1(R)$ : means that the function $x$ is integrable and its integral over $R$ is finite.

Fourier transform = Fourier Series with a signal of infinite period (becomes a non periodic function) --> points of the series get closer and closer together until they become a continuous curve at infinity.