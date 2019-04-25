address the option discovery problem by showing how PVFs implicitly define options. We do it by introducing eigenpurposes, intrinsic reward functions derived from the learned representations. The options discovered from eigenpurposes traverse the principal directions of the state space. Moreover, different options act at different time scales, making them helpful for exploration. 

Proto-value functions (PVFs) implicitly define options. Proto-value functions (PVFs) are learned representations that capture large-scale temporal properties of an environment. PVFs capture the large-scale geometry of the environment, such as symmetries and bottlenecks.They are task independent, in the sense that they do not use information related to reward functions. 

Eigenpurposes are intrinsic reward functions that incentivize the agent to traverse the state space by following the principal directions of the learned representation. Each intrinsic reward function leads to a different eigenbehavior, which is the optimal policy for that reward function.

not all options capable of accelerating planning are useful for exploration. We show that options traditionally used in the literature to speed up planning hinder the agents’ performance if used for random exploration during learning.

optimal hierarchy minimizes the geometric mean number of trial-and-error attempts necessary for the agent to discover the optimal policy for any selected task
