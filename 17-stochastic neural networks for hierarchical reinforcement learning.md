propose a general framework that first learns useful skills in a pre-training environment, and then leverages the acquired skills for learning faster in downstream tasks. Our approach brings together some of the strengths of intrinsic motivation and hierarchical methods: the learning of useful skill is guided by a single proxy reward, Then a high-level policy is trained on top of these skills, providing a significant improvement of the exploration and allowing to tackle sparse rewards in the downstream tasks. 

RL algorithms typically employ naive exploration strategies such as epsilon-greedy or uniform Gaussian exploration noise, which have been shown to perform poorly in tasks with sparse rewards.challenge is further complicated by long horizons, where naive exploration strategies can lead to exponentially large sample complexity

By composing low-level actions into high-level primitives, the search space can be reduced exponentially. However, these approaches require domain-specific knowledge and careful hand-engineering.

One of the main appealing aspects of hierarchical reinforcement learning (HRL) is to use skills to reduce the search complexity of the problem

main interest is in solving a collection of downstream tasks, specified via a collection of MDPs M. 

__state structural assumption__\
For each MDP M 2 M, we assume that the state space SM can be factored into two components, Sagent, and Srest M , which only weakly interact with each other. The Sagent should be the same for all MDPs in M. We also assume that all the MDPs share the same action space. Intuitively, we consider a robot who faces a collection of tasks, where the dynamics of the robot are shared across tasks, and are covered by Sagent, but there may be other components in a task-specific state space, which will be denoted by Srest. For instance, in a grasping task M, Srest M may include the positions of objects at interest or the new sensory input associated with the task. Given a collection of tasks satisfying the structural assumption, our objective for designing the algorithm is to minimize the total sample complexity required to solve these tasks.

construct a pre-training environment\
by letting the agent freely interact with the environment in a minimal setup. For a mobile robot, this can be a spacious environment where the robot can first learn the necessary locomotion skills; for a manipulator arm which will be used for object manipulation tasks, this can be an environment with many objects that the robot can interact with. we use a generic proxy reward as the only reward signal to guide skill learning. In other words, it encodes the prior knowledge about what high level behaviors might be useful in the downstream tasks, rewarding all of them roughly equally. 

learning high level policy\
Given a span of K skills learned during the pre-training task, we now describe how to use them as basic building blocks for solving tasks where only sparse reward signals are provided. Instead of learning from scratch the low-level controls, we leverage the provided skills by freezing them and training a high-level policy (Manager Neural Network) that operates by selecting a skill and committing to it for a fixed amount of steps T . 

hierarchical architectures are able to learn much faster in every new MDP as they effectively shrink the time-horizon by aggregating time-steps into useful primitives
