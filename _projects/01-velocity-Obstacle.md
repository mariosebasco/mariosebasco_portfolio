---
layout: project
title: Velocity Obstacles
date: December 2016
imageMain: /mariosebasco.github.io/public/images/velocity_obstacle.png
---

## Overview
As part of a group of three for a final project in Computational Geometry at Northwestern, we were able to implement an algorithm for collision avoidance. Particularly, we implemented, from scratch, Velocity Obstacles in Python. In this algorithm an active robot looks at the world around and tries to predict within a certain time interval what objects it may crash with. Upon doing so it chooses a velocity from a possible space which will avoid any possible collisions. The active robot then examines the new state and makes a new decision, again and again until it has reached it desired position.

The video below shows the algorithm implemented using three robots, where two of them are passive and the third is active. All of the robots will move towards their goal position, however the active robot must do so while also avoiding the other two. The algorithm written for the project can be generalized to any number of robots, and incorporated for any number of starting and goal positions. Although the code can be edited to maximize optimization it works efficiently enough to provide good results.

Future research should look into upgrading the code to account for multiple active robots. This is called Reciprocal Collision Avoidance and has been studied extensively in literature.

<a href="http://www.youtube.com/watch?feature=player_embedded&v=m1JgThOrWjI" target="_blank"><img src="http://img.youtube.com/vi/m1JgThOrWjI/0.jpg" alt="Velocity Obstacles" width="240" height="180" border="10" /></a>