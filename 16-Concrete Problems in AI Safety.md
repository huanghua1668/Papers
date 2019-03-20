Exploration is necessary to ensure that the agent finds the states that are necessary for near-optimal performance. We may be able to avoid the need for exploration altogether if we instead use inverse RL or apprenticeship learning, where the learning algorithm is provided with expert trajectories of near-optimal behavior

exploration can be dangerous, since it involves taking actions whose consequences the agent doesn’t understand well. 

More sophisticated exploration strategies that adopt a coherent exploration policy over extended temporal scales 

real world RL projects can often avoid these issues by simply hard-coding an avoidance of catastrophic behaviors. 

For instance, an RL-based robot helicopter might be programmed to override its policy with a hard-coded collision avoidance sequence (such as spinning its propellers to gain altitude) whenever it’s too close to the ground. This approach works well when there are only a few things that could go wrong, and the designers know all of them ahead of time. But as agents become more autonomous and act in more complex domains, it may become harder and harder to anticipate every possible catastrophic failure. 

__Risk-Sensitive Performance Criteria:__\
changing the optimization criteria from expected total reward to other objectives that are better at preventing rare, catastrophic events; see [55] for a thorough and up-to-date review of this literature. These approaches involve optimizing worst-case performance, or ensuring that the probability of very bad performance is small, or penalizing the variance in performance

Trusted Policy Oversight: If we have a trusted policy and a model of the environment, we can limit exploration to actions the trusted policy believes we can recover from.
