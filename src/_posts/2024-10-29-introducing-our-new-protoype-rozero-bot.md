---
layout: post
author: duncan_miller
title: Introducing Our New Prototype Rosie
description: Meet our new prototype Rosie the first of our line of autonomous robotic systems.
image: /images/posts/joe_robot_battery_lab_16x9.jpg
published: true
---

We are introducing our latest prototype: Rosie the Robot, which we are now using in our lab to collect machine learning datasets.

This prototype will help us to develop a proof of concept for our autonomous disassembly system for EV batteries by demonstrating that we can collect human guided training data and use that data to train a transformer neural network. We will then demonstrate our ability to transfer skills from the human to the Rosie to be performed autonomously.

![Rosie the Robot](/images/posts/rosies.jpg)

Yes we watched the Jetson's growing up and Rosie is an homage to [Rosie the Robot](https://thejetsons.fandom.com/wiki/Rosie_the_Robot_(episode)), the autonomous robot housekeeper of the Jetson family. We also believe that the existential need to mobilize the world against climate change requires a movement akin to the 'We Can Do It' spirit of [Rosie the Riveter](https://hbr.org/1993/07/whatever-happened-to-rosie-the-riveter).

### Introducing Rosie

Built on Stanford University researchers' open-source [ALOHA platform](https://mobile-aloha.github.io/), Rosie allows a human operator to control two robotic arms with precision. Its three onboard cameras and onboard laptop capture video and joint position data, which can then be used as machine learning training data to train a transformer neural network.

This advanced system enables the transfer of skills to Rosie, allowing it to perform tasks autonomously after being trained by human demonstration. This leap forward in robotics and machine learning is enabled by the advancements in transformer neural networks, the technology behind Large Language Models like ChatGPT. Transformer neural networks are essentially prediction machines, but instead of using the to predict language tokens to write text, we use them to predict motion control signals to move Rosie.

While Rosie is a rudimentary prototype working with small scale batteries like e-bike batteries, our vision is to develop an EV-battery pack scale system which has the ability to learn and evolve through AI, gathering knowledge provided by human demonstration to enhance its capabilities and becoming autonomous over time.

Check out this video showing us using Rosie in the lab.

{% render "youtube_embed", youtube_key: "9czDOq4Jdfg" %}

Thank you for your continued support as we embark on this exciting new journey!
