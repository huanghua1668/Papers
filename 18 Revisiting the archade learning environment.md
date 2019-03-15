agents are supposed to be automatically learn representations. DQN can lean representation jointly with control policies. However, RL based on neural networks still have a high sample complexity, requiring at least dozens of millions of samples before achieving good performance, in part due to the need for learning this representation.

Planning and Model-Learning\
Learned models tend to be accurate for a small number of time steps until errors start to compund. A related open problem is how to plan with an imperfect model.

Exploration\
in some games such as PITFALL and __Tennis__ pose an even harder challenge: __random exploration is more likely to yield negative rewards than positive ones. An aspect that still seems to be missing are agents capable of committing to a decision for extended periods of time, exploring in a different level of abstraction, something that humans frequently do. Maybe agents should not be exploring in terms of joystick movements, but in terms of object congurations and game levels.__
