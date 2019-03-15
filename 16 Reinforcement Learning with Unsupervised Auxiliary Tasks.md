augmenting a deep reinforcement learning agent with auxiliary control and reward prediction tasks

solving a host of reinforcement learning problems, each focusing on a distinct feature of the sensorimotor stream\
overall objective is to maximise total performance across all these auxiliary tasks\
Pixel changes - train agents that learn a separate policy for maximally changing the pixels in each cell of an n x n non-overlapping grid placed over the input image\
Network features - train agents that learn a separate policy for maximally activating each of the units in a specific hidden layer. We refer to these tasks as feature control\
An agent with a good representation of rewarding states, will allow the learning of good value functions, and in turn should allow the easy learning of a policy.
