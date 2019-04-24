leverage expert feedback to learn sequential decision-making policies

reinforcement learning (RL)—is particularly difficult when the planning horizon is long and rewards are sparse. One successful method for dealing with such long horizons is imitation learning, in which the agent learns by watching and possibly querying an expert.  

We study the case where the underlying problem is hierarchical, and subtasks can be easily elicited from an expert. Our key design principle is an algorithmic framework called hierarchical guidance, in which feedback (labels) from the high-level expert is used to focus (guide) the low-level learner. The high-level expert ensures that low-level learning only occurs when necessary (when subtasks have not been mastered) and only over relevant parts of the state space.  we consider feedback at multiple levels for a hierarchical policy class, with different levels potentially receiving different types of feedback (i.e., imitation at one level and reinforcement at the other).

a natural two-level hierarchy; the HI level corresponds to choosing subtasks, and the LO level corresponds to executing those subtasks. For instance, an agent’s overall goal may be to leave a building. At the HI level, the agent may first choose the subtask “go to the elevator,” then “take the elevator down,” and finally “walk out.” Each of these subtasks needs to be executed at the LO level by actually navigating the environment.

the motivation for separating the types of feedback is that different expert queries will typically require different amount of effort, which we refer to as cost. For instance, identifying if a robot has successfully navigated to the elevator is presumably much easier than labeling an entire path to the elevator.

Hierarchical guidance also applies in the hybrid setting with interactive IL on the HI level and RL on the LO level. The HI-level expert provides the hierarchical decomposition, including the pseudo-reward function for each subgoal,6 and is also able to pick a correct subgoal at each step. 

Montezuma’s Revenge is a natural candidate for testing hierarchical approach due to the sequential order of subtasks.

In the specific example of Montezuma’s Revenge, the actual human effort is in fact much smaller, since the human expert needs to provide a sequence of subgoals only once (together with simple subgoal detectors), and then HI-level labeling can be done automatically. The human expert only needs to understand the high level semantics, and does not need to be able to play the game.
