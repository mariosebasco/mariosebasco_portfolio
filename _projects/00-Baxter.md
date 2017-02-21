---
layout: project
title: Baxter Pick and Place
date: December 2016
imageMain: /mariosebasco.github.io/public/images/baxter.png
---

## Overview
As part of our final projects for Embedded Systems in Robotics, our group was posed with the task of using <a href="http://www.rethinkrobotics.com/baxter/">Baxter</a> in order to demonstrate our experience with ROS. The requirementes of the project were as follows: teams must use Baxter's arms to pick up and place several different objects, they must use one or more of Baxter's built in sensors (cameras, accelerometers, etc.), they must create at least one ROS package to hold the project, and lastly, teams must use Github to upload and thoroughly document their projects (The full project can be found <a href="https://github.com/AlexeyRevinski/ME495_FINAL">here</a>).

The objective of our project was a simple setup for a fancy dinner using the extensive capabilities of Baxter. Given a set of three utensils (a fork, a spoon, and a knife), Baxter is required to place them in a specified position relative to a plate (fixed in the center), akin to proper table setting in a fancy restaurant. Each utensil is marked with a different color (red, green, or blue), which allows Baxter to differentiate between the utensils and pick and place them in their proper positions. In this demonstration, Baxter also determines the position of the plate and stores it for future reference.

A full list of all the nodes, services, launch files, and all other tools used for this project can be seen in the Github page provided.
<a href="https://github.com/AlexeyRevinski/ME495_FINAL">Full Project</a>

<img src="/mariosebasco.github.io/public/images/baxter.png" alt="Baxter image" style="width:800px;height:450px;">