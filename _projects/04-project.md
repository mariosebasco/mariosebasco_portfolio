---
layout: project
title: NASA SAFE50
date: June - August, 2015
imageMain: /mariosebasco.github.io/public/images/liftFinalUp.jpg
---

## Overview
As part a of a research team at the NASA Ames Research Center I worked on the implementation of a Safe Autonomous Flight Environment for small UAV's within 50 feet of the ground (SAFE50). The project looked into several aspects of UAV safety, these included motor failure control algorithms, wind prediction control algorithms, and CFD studies. In particular I studied the effects that high wind speeds of an urban environment would have on a small flying system and how to find an optimal route to reach your destination given an initial map of wind velocities.

## Motivation
Ensuring the safe flight of Unmanned Aerial Systems (UASs) is a crucial step as the commercial industry introduces more of these systems into civilian populations. The fear of wind turbulence damaging the trajectory of a UAS, and possibly even causing it to crash, is a real concern at the current stage of development of the systems. Additionally, the need for the maximization of route planning efficiency for companies handling these UAVs is a topic that can lead to considerable savings in energy and money.

### Process
During my time at Ames I Served as the lead of the CFD team researching urban wind environments and their effect on low flying UAS’s. In particular I looked into potential areas such as "urban canyons", and other high wind velocity gradient regions near buildings. The effects of which were simulated and partially resolved with the implementation of wind prediction control algorithms developed in Simulink. Additionally I Developed an optimization algorithm in MATLAB that could numerically calculate the fastest path between to points while taking into account nearby wind velocities obtained from CFD tests.

The technical paper of all that was done for the research project can be found here: <a href="/mariosebasco.github.io/pdf_files/NASAFullRep.pdf">NASA Technical Report</a>


<img src="/mariosebasco.github.io/public/images/manualLift.jpg" alt="wheelchair lift" style="width:800px;height:434px;">

