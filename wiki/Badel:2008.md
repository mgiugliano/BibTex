```@Article{pmid17466481,
   Author="Inan, N.  and Arslan, A.  and Akansel, G.  and Anik, Y.  and Balci, N. C.  and Demirci, A. ",
   Title="{{D}ynamic contrast enhanced {M}{R}{I} in the differential diagnosis of adrenal adenomas and malignant adrenal masses}",
   Journal="Eur J Radiol",
   Year="2008",
   Volume="65",
   Number="1",
   Pages="154--162",
   Month="Jan"
}
```


# Dynamic I-V curve	

Object: reduce dimensionality of detailed models, in space and equation-wise.
Blue Brain Project models --> highly complex in morphologies, and tens of o.d.e.
Point neurons: eliminating morphology
Simplifying equations: using the (exponential) Integrate-and-Fire model

$F(V) = \frac{Em-V}{\tau_m}$
$F(V) = V^2$
$F(V) = \frac{El-V + D_T^{{V-V_T}/D_T}}{\tau_m}$

# They started from the Wang-Buzsaki model

$I_{ion} = I_{ext} - C \frac{dV}{dt}$

They plotted the above quantity as a function of $V_m$ and then binned. Note that AP decaying phase have been clipped out and the 200ms following each AP was removed. The trace is taken up to the peak of each AP.

The applied external current was the usual fluctuation noisy current.

The value of C is guessed as the value minimizing the variance of the dynamical current.

They repeated the procedure after the spike (5-10ms, 10-20ms, 20-30ms after the peak) and identified the way the dynamical I-V curve changes in time. They extracted for each par (\tau_m, V_T, E_m, D_T) the evolution after the spike.

Up to 96% of AP time and subthreshold voltage trajectory is captured, when using the Wang-Buzsaki model.


# Pyramidal cells, real experiments.

When using real cells, with injected fluctuating currents, the I-V curve was fitted very well by the exponential IF.
The capacitance estimated is very close to the independent current-clamp capacitance estimate.
However the refractory, post-spike, dynamics is very different across time after the AP. After 50-300ms the parameters converge to the parameters before the AP.

83% success AP time (within a 15ms window)[](...)


# GABAergic cells

They also repeated the experiments in GABAergic interneurons. The main difference is that the refractory parameters evolution is very different: e.g. the $E_m$ is exponential instead of biphasic (in pyramidal cells). 

# Dynamic-clamp

They repeated the same with conductance-injection, in pyramidal neurons... The best-fit works but the exponential integrate-and-fire must be complemented with an additional exponential term with another D_T and V_T. The rationale is that increased accuracy of the AP at the onset is needed because in conductance-clamp the voltage trajectory stays closer to the excitability threshold, as fluctuations are smaller. 

Refractoryness was not majorly affected. 

# Conclusion. 
Dynamic I-V curve can characterise the response properties of neurons. Predicts subthreshold voltage *and* AP timing.



