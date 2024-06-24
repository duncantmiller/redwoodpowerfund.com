---
layout: post
author: duncan_miller
title: Advancing EV Battery Recycling with Autonomous Robotic Deconstruction
description: Discover how Rose City Robotics is pioneering autonomous robotic solutions for the recycling of lithium-ion electric vehicle batteries.
image: /images/posts/ev_battery_recycling.png
published: false
---

Electric vehicles (EVs) are taking over the automotive industry and as their powerful lithium-ion batteries begin to reach their end of life, the need for efficient recycling solutions for those batteries is becoming more and more critical. Battery powered equipment is also taking over trucking, bicycles, scooters, motorcycles, trucking, marine craft, tractors, forklifts and many other types of equipment, not to mention the growing number of humanoid robot companies preparing for mass production like Tesla, Agility, Figure AI and Boston Dynamics. There is also an explosion in energy storage (typically lithium-ion batteries) in residential, commercial, industrial and utility scale applications to help the world adopt more wind and solar power.

Lithium-ion batteries are made with several chemistries, but all use some combination of valuable materials like nickel, manganese, cobalt, aluminum, copper and of course lithium. Many of these critical materials are mined outside the United States and some materials will be in scarce supply based on the projected numbers of batteries we will need, particularly cobalt.

Ouside of the lithium, the rest of the materials are not actually used up by the battery so they still exist in their original quantities in a battery at its end of life. The problem is recovering them.

At Rose City Robotics, we are developing autonomous robotic systems to enhance the recycling process of lithium-ion batteries. Our mission is to enable the autonomous disassembly of large lithium-ion batteries like the ones used in electric vehicles, recovering valuable materials with greater efficiency and lower emissions.

### The Need for Autonomous Robotic Deconstruction

#### Ideal Recycling Process
The best way to recycle a lithium-ion battery to recover the most material, with the lowest environmental and energy footprint is called direct recycling. This is where batteries packs are disassembled to get at the cells within. When a battery reaches its end of life, it may be because only one or two cells have gone bad. The good cells can be repackaged for use in other applications, either in rebuilt batteries for EVs or for other purposes like energy storage for buildings or utilities. Bad cells that are not usable can then be shredded to recover the materials through a chemical processes called hydrometallurgy.

#### Current Recycling Methods
Unfortunately today, direct recycling is not used for the vast majority of batteries that are recycled. Currently, most batteries that come in to recycling centers with over 30% of charge are burned whole and the materials are recovered through a process called pyrometallurgy. This is a challenging process since the whole pack is burned, it contains a lot of carbon which binds with the valuable materials, making them more difficult to recover.

Batteries that come in under a 30% charge of are simply shredded whole, then recovered using hydrometallurgy. Again, since the whole pack is shredded together it takes lots of energy and strong acids to recover the materials. If a battery has over 30% charge, pyrometallurgy makes more sense as the charge is too high for shredding and it too challenging and time consuming to discharge.

Both burning and shredding whole battery packs are not only inefficient but also environmentally damaging. The recycling process involves significant emissions and fails to recover valuable materials optimally. This is where the need for direct recycling and a more refined, autonomous approach becomes evident.

#### Challenges of Direct Recycling
When batteries are delivered to recyclers from scrap yards they come in a wide variety of conditions. Some scrap yards store them outside due to fear of fire and they are often covered in rust, dirt, grease and grime. Batteries may be bent or damaged if they are dropped and banged around during the transportation process.

##### Dangers to Humans

In addition, batteries may come in at varying levels of charge and nearly all with at least some charge. Due to the fact that they become unstable (catch on fire) at low charge, batteries have a built in safety mechanism to ensure they always retain a certain minium charge. This means nearly every large battery is dangerous to work on for human workers due to risk of electrical shock. The batteries also contain hazeardous materials which can be harmful to human health if not handled properly and can become unstable when being disassembled, meaning fire risk.

##### No Standardization of Fastenings
Manufacturers also make their own proprietary battery packs that are sealed and fastened in a variety of ways including fusion welding, ultrasonic welding, ultrasonic bonding, industrial adhesives like epoxy, silicone and acrylic or mechanical fasterners like screws, rivets, or bolts. This means that each battery pack is unique and requires a custom approach to disassembly. The rapid pace of innovation in the EV industry also means that battery packs are constantly evolving with many manufacturers changing up their battery packs multiple times per year, making it challenging to develop a standardized approach to disassembly even within the same brand of battery.

Given these dangers and challenges, its simply not feasible for humans to disassemble each battery pack so its simply more practical right now to just either burn or shred the battery packs whole.

#### Why Autonomous Robots?
Autonomous robots offer a promising solution by enabling direct recycling of battery packs. Robots are well suited for dangerous jobs dealing with high voltage electricity and hazardous materials, removing the risk to human workers.

Overcoming the challenge of fastener defeating calls for for intelligent and adaptive robotics that can learn on the job, from other robots in a network as well as from humans, videos and product documentation.

Robotic equipment offers precise disassembly, recovering materials with greater efficiency and significantly reducing downstream emissions in the recycling process. Leveraging machine learning and transformer neural networks, we are developing robots that can use sensor and vision data to learn to perform these dangerous and challenging tasks with adaptive intelligence and continuous learning capabilities.

### Technological Innovations in Robotics

#### Leveraging Machine Learning
Our approach at Rose City Robotics involves collecting and utilizing sensor and vision data to train transformer neural networks to provide robots with predictive motion planning capabilities. This allows our robots to train on complex tasks, enabling them to perform precise disassembly operations autonomously. This process is called imitation learning, where robots learn from human demonstrations and other robots in a network demonstrated by [research out of Stanford University](https://mobile-aloha.github.io/).

#### Sensor and Vision Data Integration
We are developing [systems for capturing training data from human demonstrations](https://rosecityrobotics.com/2024/05/08/data-collection-methodologies-for-ai-driven-robotics/). By integrating training data gathered from our sensors and vision systems, we provide our robots with the necessary data to understand and navigate the intricate structures of EV battery packs. This data is crucial for training custom robots to perform these tasks safely and efficiently.

### Benefits of Autonomous Robotic Deconstruction

#### Improved Efficiency and Material Recovery
Autonomous robotic deconstruction allows for more precise material recovery compared to traditional methods. By directly disassembling battery packs, our robots can recover valuable materials such as nickel, manganese, cobalt, aluminum, copper and lithium more efficiently. Also good cells can be extracted before the recycling process and returned directly to use, which saves a considerable amount of embodied manufacturing energy and cost.

#### Reduced Emissions
The use of autonomous robots in the recycling process significantly reduces emissions. Traditional methods like burning and shredding packs whole result in high levels of emissions, whereas our approach minimizes environmental impact through precise and controlled operations.

#### Enhanced Safety
Battery recycling involves handling hazardous materials with electrical charge, which poses safety risks to human workers. Autonomous robots mitigate these risks by performing dangerous tasks, ensuring a safer working environment.

### Market and Industry Landscape

#### Growth of EV Market
The EV market is growing rapidly, with EVs projected to constitute 40% of global car sales by 2030. This growth increases the demand for efficient recycling solutions to manage the influx of used batteries. Since batteries reach their end of life in 10-15 years by 2030 experts at Argonne National Labs expect the United States will need to recycle 1 million tons of EV batteries and this number is growing exponentially, with over 100 million tons of batteries to be recycled by 2035.

#### Current Recycling Capacity
While China leads the world in recycling capacity, the EU and the US are still developing their industries. Experts estimate the current recycling capacity in the US to be approximately 200,000 tons of batteries per year. Policymakers are increasingly pressuring the EV sector to ensure that batteries are designed for circularity, containing recycled content, and that recyclers recover larger shares of materials. EU regulations now require that 25% of materials in new batteries must be recycled content.

### Challenges and Solutions

#### Technological and Regulatory Challenges
The recycling industry faces challenges such as rapid advances in cell technologies and battery pack construction, regulatory risks, and the volatility of commodity prices. At Rose City Robotics, we address these challenges through innovation and strategic partnerships, ensuring that our technologies remain at the cutting edge of the industry and that our robotic solutions are adaptable as batteries continue to evolve.

### Our Values and Vision

#### Commitment to Climate Impact
We are passionate about using robotics and AI to make a positive impact on the climate. Our goal is to improve the average quality of life for all humanity by developing technologies that mitigate environmental harm.

#### World-Class Standards
Our robots are designed to perform world-class operations, improving efficiency and safety in the recycling process. We believe in taking responsibility for our creations and continuously learning from our experiences.

#### Collaboration and Knowledge Sharing
We value collaboration and believe in sharing knowledge to drive innovation. By working together, we can identify problems and solutions more quickly, advancing the field of robotic automation.

#### The Future of EV Battery Recycling

At Rose City Robotics we believe the future of EV battery recycling lies in autonomous robotic deconstruction. We are committed to advancing this technology to reduce emissions and enable the continued growth of electric vehicles and battery technology, which we believe will benefit humanity and provide a positive climate impact. By leveraging machine learning, we are developing intelligent, adaptive robots that revolutionize the recycling process.

Join us in pioneering sustainable recycling solutions and transforming the way we handle EV battery waste. For more information [reach out](/#contact) to us today.
