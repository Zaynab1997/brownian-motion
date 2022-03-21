# Brownian-Motion

The term “classical Brownian motion” describes the random movement of microscopic, relatively big particles suspended in a liquid or gas.

1905: Albert Einstein produced his quantitative theory of Brownian motion, showing how to compute the probability (P) of a particle’s moving a certain distance (x) in any given direction, during a certain time interval (t) in a medium whose coefficient of diffusion (D).

D = R × T/(6π × Na × n × r)
where:
- T: temperature. Na: Avogadro number n: viscosity of liquid.
- r: radius of the particle. R: gas constant.
So, the displacement ∆x is equal to D multiplied by the square of the time interval between 2 consecutive positions, by a white noise, and by a probability density function following the normal law.

Solution: 
```
∆x=noise*sqrt(T/N)*D*normrnd(0,1);
```
Using elastic collision between 2 sphers

The applications of "random theory" are:

- In modeling fluctuations in prices in financial markets.
- A simpler Model for stochastic phenomenal than random walk hypothesis.
- Modeling noise in images.
- Generating fractals.

It is subjected to no other interaction than shocks with the molecules of the surrounding environment, where the previous change in the value of a variable is unrelated to future or past changes.

in this work:

![Screenshot from 2022-03-21 14-44-01](https://user-images.githubusercontent.com/36966005/159273889-9b3d2bf1-1b64-431a-95a6-1480d2f9a16e.png)

![Screenshot from 2022-03-21 14-44-22](https://user-images.githubusercontent.com/36966005/159273925-44562eb6-a276-4793-945e-e19404ac27de.png)
