We combine recent techniques of deep reinforcement learning with existing model-based approaches using an expert-provided state abstraction. 

Abstraction-based approaches focus on end-to-end learning of both the abstractions and the resulting sub-policies, and are hindered by an extremely difficult optimization problem that balances constructing a good abstraction while still exploring the state-space and learning the policies to navigate the abstraction while the abstraction continues to change.

propose the following method in which an experimenter provides a lightweight abstraction consisting of factored high-level states to the agent. We then employ the formalism of the Abstract Markov Decision Process (AMDP) [7] to divide a given domain into a symbolic, high-level representation for learning long-term policies and a pixel-based low-level representation to leverage the recent successes of deep-learning techniques. In our toy example, the highlevel representation would be the current room of the agent and whether the agent has the key, and the low-level representation would be the pixel values of the image.

manually-annotated goals in our case would be adjacent highlevel states.

L1-agent’s abstraction is specified by: a set of abstract states factored into attributes that represent independent state components and a set of predicate functions that are used to specify dependencies or interactions between particular values of the attributes. This information is provided to the agent in the form of a state projection function, F : S 7→ S ˜, which grounds abstract states to sets of environment states. 

main benefit of our abstractions is to shorten the reward horizon of the low-level learner. The guiding principal is to construct an abstraction such that L1-states encompass small collections of L0-states. 

In our experiments, we split rooms up into smaller sectors in the abstraction to decrease the horizon for the L0 learners and, in some games, to retain the Markovian property of the abstraction. For Toy MR, these sectors were hand-made for each of the rooms 

in many real world domains, there are natural decompositions of the low-level state into abstract components

main drawback to our approach is the requirement for a hand-annotated state-projection function that nicely divides the state-space. However, for our method allows this function need only specify abstract states, rather than abstract transitions or policies, and thus requiring minimal engineering on the part of the experimenter.
