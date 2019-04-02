Hierarchical approaches to reinforcement learning (RL) problems promise many __benefits__: (a) improved exploration (because exploration can take “big steps” at high levels of abstraction), (b) learning from fewer trials (because fewer parameters must be learned and because subtasks can ignore irrelevant features of the full state) and (c) faster learning for new problems (because subtasks learned on previous problems can be re-used).

relies on a programmer to design a hierarchy of abstract machines that constrains the possible policies to be considered.

relies on a programmer-designed hierarchy. In this hierarchy, each subtask is defined in terms of goal states or termination conditions. Each subtask in the hierarchy corresponds to its ownMarkov Decision Problem (MDP), and the methods seek to compute a policy that is locally optimal for each subtask.
