---
layout: post
author: duncan_miller
title: Data Collection Methodologies for AI-Driven Robotics
description:
published: false
---

A robot will need to be trained to do any new task an the essential first step of that processing is collecting examples using video and sensors. In order to train a neural network on the intricacies of the task, we need to collect somewhere in the range of 50-100 examples of a human, or leader robot doing that task using carefully placed video and sensors.

In traditional automation or robotics, the tasks done by the machines must be very prescriptive and well defined. Mapping movements to precise locations, ordered operations and a scripted list of actions and repeated processes. This works well for high volume, low mix tasks where there are a small number of variations in possible objects the robot will interact with. This is because an operator must reprogram the robot for each new object or movement. High volume, low mix processes make can justify this additional work by spreading out out over a large number of automated actions.

Were traditional robotics and automation hardware fall short are in more challenging tasks for example tasks which include low volumes and high mix of variations in the possible objects the robot will interact with. For this case, it is typically not economically feasible for the operator to reprogram the robot for each low volume run many times for the high mix of objects.

This is where the power of AI and intelligent robotics can comes into play. At Rose City Robotics, our innovative approaches in data collection and robotic training using neural networks enable us to add layers of intelligence and capabilities to any robotics hardware. This enables the robots to be more adaptable, learn on the fly and intuit next actions based on its broader training dataset.

## The Role of Data in Robotics

### Data as the Foundation
Effective AI-driven robotics begins with high-quality data. At Rose City Robotics, we utilize advanced sensors and vision systems to collect diverse, rich datasets that enable us to use machine learning to train robots to perform complex tasks with precision and adaptability.

### Leading Data Collection Methodologies
Our data collection methodologies are at the forefront of the industry, leveraging cutting-edge technologies to capture and process data in ways that are both efficient and effective. Our primary data collection methodologies include:
- Universal Manipulation Interface (UMI)
- Teleoperation with ALOHA
- Apple Vision Pro

## Universal Manipulation Interface (UMI): Bridging Human Skills and Robotic Capabilities

### Overview of UMI
The Universal Manipulation Interface (UMI) is our primary data collection framework, designed to capture nuanced human manipulations directly from demonstrations. The UMI devices we use are based on [research and open source hardware](https://umi-gripper.github.io/) from Stanford University, Columbia University and the Toyota Research Institute. This system uses sensorized hand-held grippers and advanced camera setups to record detailed manipulation actions, which are then translated into trainable data for robots.

### UMI Data Collection Examples
{% render "youtube_embed", youtube_key: "gXtIW1HlITo" %}

### Technological Innovations
- **Wide Field of View:** Fisheye lenses on wrist-mounted cameras significantly enhance the visual context, capturing intricate interactions in a broad visual field.
- **Implicit Stereo Vision:** Side mirrors on the grippers enrich the dataset by providing multiple visual perspectives, crucial for depth perception and environmental understanding.
- **Kinematic-Based Data Filtering:** This feature ensures that the diverse data collected is readily applicable across different robotic models, enhancing flexibility and utility.

### Data Collection and Processing
UMI enables operators to perform tasks in varied environments, capturing every movement and interaction. The data is meticulously processed and annotated, providing a foundational dataset that informs the precise and adaptive behaviors of our robots.

## Teleoperation with ALOHA A Low-Cost System for Precise Robotic Training

### Overview of ALOHA
ALOHA stands for A Low-cost Open-source Hardware System for Bimanual Teleoperation. It represents a significant leap in making fine manipulation tasks accessible and reproducible on a budget, without sacrificing performance.

### Teleoperation Data Collection Examples
{% render "youtube_embed", youtube_key: "N-WSYbU4I_0" %}

### Teleoperation System Setup
- **Bimanual Coordination:** Utilizes two synchronized robotic arms to replicate complex human tasks, enhancing the dexterity and range of robotic actions. Enables a human operator to directly control both arms and the mobile base of the robot. Suitable for executing complex tasks.
- **Cameras and Sensors:** Multiple cameras provide comprehensive visual feedback at a high frequency, capturing detailed visual and motion data during demonstrations which is essential for tasks requiring fine visual coordination.
- **Complex Task Execution:** Capable of handling intricate tasks like cooking, cleaning, and navigation.
- **Integration with Training Data:** Combines data from mobile and static ALOHA demonstrations for improved generalization and training efficiency.

### Data Collection Process
- **Human Demonstrations:** Operators use this teleoperation system to perform finely controlled tasks, which are recorded in detail.
- **Recording Data:** Captures both the physical motions and the visual data, providing a complete picture of each task.

### Volume of Data Collected
- **Sample Size and Time:** For each task, about 50 to 100 demonstrations are recorded, totaling around 10-20 minutes of active demonstration time per task.

### Post-Training Capabilities
- **Learned Skills:** Robots trained with data from ALOHA perform with precision in real-world applications, successfully executing tasks like threading cable ties, opening condiment cups, and even juggling ping pong balls with high success rates.
- **Bimanual Manipulation:** Coordinating both arms simultaneously to perform tasks like cooking, cleaning, and object sorting.
- **Navigation:** Moving the robot base in conjunction with arm movements, facilitating smooth navigation in complex environments.
- **Long-Horizon Tasks:** Combining movement and manipulation skills to handle more intricate, sequential tasks such as tidying up spaces and loading objects.

### Addressing Challenges
- **Compounding Errors and Variability:** ALOHA addresses these common challenges in robotic training through innovative techniques like action chunking and the use of a conditional variational autoencoder, ensuring smooth operation and adaptability to task variations.
- **Co-Training Approach:** Data from static ALOHA demonstrations, which include 825 examples of diverse manipulation tasks, is integrated into training alongside Mobile ALOHA data to improve generalization and data efficiency.
- **Imitation Learning:** Behavior cloning is used to replicate human demonstrations. The system benefits from combining mobile and static data to learn long-horizon tasks such as cooking, cleaning, and navigating.

### Enhancing Robotic Training with Apple Vision Pro

#### Advanced Sensory Capabilities
In addition to more traditional data collections outlined above, we have also developed a data collection application for the Apple Vision Pro. The Vision Pro is equipped with state-of-the-art sensors including depth sensors, infrared illuminators, lidar scanners, and RGB cameras, offers unprecedented data collection capabilities. This technology captures intricate environmental and interaction details, ideal for training AI-driven robots in complex tasks.

#### Hand Tracking Technology
Apple Vision Pro's hand tracking technology allows for the precise capture of human hand movements and gestures. This feature can be useful for capturing data used for teaching robots tasks requiring fine motor skills and intuitive human-robot interaction.

#### Applications and Benefits
- **Detailed Environmental Interaction**: Utilizes advanced sensors to capture comprehensive environmental data, enriching the training datasets for robotic systems.
- **Gesture and Motion Recognition**: Enhances robots' understanding of human gestures, improving their responsiveness and interaction capabilities in various settings.
- **High-Quality Training Data**: Provides accurate and detailed data, crucial for developing sophisticated robotic behaviors and operational adaptability.

By leveraging the Apple Vision Pro’s capabilities, we are innovating ways to significantly enhance data collection for robotic training, leading to more adaptive, responsive, and capable robotic systems.

## Applications in Industry

From manufacturing to recycling and logistics, our robots are adept at performing a range of tasks—from assembly and inspection to delicate assists and intricate sorting operations. This versatility showcases the practical benefits of these advanced training methodologies.

## Future of Robotics

As we look ahead, the integration of even more advanced AI capabilities promises to further enhance the autonomous functions of robots, making them even more capable and flexible.

Rose City Robotics is committed to pushing the boundaries of what's possible in robotic automation. By integrating sophisticated data collection systems like UMI,  ALOHA teleoperation and our Apple Vision Pro app into our workflow, we empower businesses to transform their operations with smart, safe, and efficient robotic assistants. For a consultation or demonstration, [reach out](/#contact) to us today.
