offer significant improvements over epsilon-greedy. Methods such as epsilon-greedy are useful for local exploration but fail to provide impetus for the agent to explore different areas of the state space.

Learning goal-directed behavior in environments with sparse feedback is a major challenge for reinforcement learning algorithms. One of the key difficulties is insufficient exploration, resulting in an agent being unable to learn robust policies.

A top-level q-value function learns a policy over intrinsic goals, while a lower-level function learns a policy over atomic actions to satisfy the given goals.

Learning goal-directed behavior with sparse feedback from complex environments is a fundamental challenge for artificial intelligence.Learning in this setting __requires the agent to represent knowledge at multiple levels of spatio-temporal abstractions and to explore the environment efficiently__

Goals expressed in the space of entities and relations can help constraint the exploration space for data efficient deep reinforcement learning in complex environments

a classic ATARI game (‘Montezuma’s Revenge’) with even longer-range delayed rewards where most existing state-of-art deep reinforcement learning approaches fail to learn policies in a data-efficient manner.

__Object-based Reinforcement Learning__\
Object-based representations that can exploit the underlying structure of a problem have been proposed to alleviate the curse of dimensionality in RL. Object-Oriented MDP, using a representation based on objects and their interactions.

agent needs intrinsic motivation to explore meaningful parts of the scene before learning about the advantage of obtaining the key. Inspired by developmental psychology literature and object-oriented MDPs, we use entities or objects in the scene to parameterize goals in this environment. In this work, we built a custom pipeline to provide plausible object candidates. Note that the agent is still required to learn which of these candidates are worth pursuing as goals.

The internal critic is defined in the space of hentity1; relation; entity2i, where relation is a function over configurations of the entities. In our experiments, the agent learns to choose entity2. For instance, the agent is deemed to have completed a goal (and only then receives a reward) if the agent entity reaches another entity such as the door.

leads to pre-training the controller so that it can learn to solve a subset of the goals. We observe that the agent first learns to perform the simpler goals (such as reaching the right door or the middle ladder) and then slowly starts learning the ‘harder’ goals such as the key and the bottom ladders, which provide a path to higher rewards.
