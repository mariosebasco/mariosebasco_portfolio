---
layout: project
title: Human-Robot Haptic Interface
date: 2017
imageMain: /mariosebasco.github.io/public/images/Northwestern.png
---

<img src="/mariosebasco.github.io/public/images/Spring_Mass.PNG" alt="Project" style="width:800px;height:316px;">

## Overview

As part of my final Project at northwestern University, I am working with professor Mitra Hartmann in her research with rat whiskers. As the group has been studying the subject for years, they have researched and developed many interesting topics. Most notably, the group at Northwestern has developed a mechanical rat whisker capable of obtaining moment, force, and spatial information. In an effort to exploit this data, my project aims at creating a human interface for the device. Specifically I seek to build and design and build  model which will give humans control over an array of rat whiskers, and accurately and intuitively relate that informtaion back to the user in the form of haptic feedback.

## Early Prototyping

Early stage research has been focused on the ability to give the user feedback which can relate back a sense of magnitude and position given wisker data. In order to do this small micropumps will apply pressure at several different locations throughout a persons fingers, when a rat whisker comes into contact with a surface activating the correct pump will give a sense of the forces being felt in a specific location.

The pump shown in the figure is a piezoelectric pump, which can be, when supplied with an AC current at its resonant frequency (of 26KHz), used to blow air into a small cavity. In this case the material wraps around the finger as seen. The design is created with one thick wall and one thin, such that the pressure is not diverted outwards but rather towards the finger of the person using the device.

Initial testing showed that the mechanism could be used to provide active feedback to a person. By controlling the voltage applied to the piezo the pressure can be easily made to increase or decrease on command. 

## Future Work

The project is only in its early stages. In the following months I hope to continue the goal stated in the overview. The next immediate step is to create a full control loop using a micropump attached to a pressure sensor. With the use of a driver for the piezo, and a microcontroller, the design should be capable of providing haptic feedback to a user while actively controlling the magnitude of the forces sensed through a computer.

Further work will try and include the rat whiskers. A system which will allow a user to actively move the devices is the second big step in the project. The final step will be to integrate the two and, once fine tuned, bring together several of these models to, as is the goal, allow a person complete haptic feedback.
