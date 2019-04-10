*This method good for locomotion, because in that task, only state matters*

let the high-level actions be goal states and reward the lower-level policy for performing actions which yield it an observation close to matching the desired goal.

make use of parameterized reward functions to specify a potentially infinite set of lower-level policies, each of which is trained to match its observed states st to a desired goal.


__design and basic training of HIRO__\
The lower-level policy interacts directly with the environment. The higher-level policy instructs the lower-level policy via high-level actions, or goals, which it samples anew every c steps. On intermediate steps, a fixed goal transition function h determines the next step’s goal. The goal simply instructs the lower-level policy to reach specific states, which allows the lower-level policy to easily learn from prior off-policy experience

We extend the standard RL setup to a hierarchical two-layer structure, with a lower-level policy and a higher-level policy. The higher-level policy operates at a coarser layer of abstraction and sets goals to the lower-level policy, which correspond directly to states that the lower-level policy attempts to reach. At each time step t, the environment provides an observation state st. The higher-level policy observes the state and produces a high-level action (or goal) by either sampling from its policy when t=0 (mod c), or otherwise using a fixed goal transition function. This provides temporal abstraction, since high-level decisions are made only every c steps. The lower-level policy observes the state st and goal gt and produces a low-level atomic action, which is applied to the environment. The environment then yields a reward Rt and transitions to a new state st+1. The higher-level controller provides the lower-level with an intrinsic reward rt = r(st; gt; at; st+1), using a fixed parameterized reward function r.

higher-level policy produces goals gt indicating desired relative changes in state observations. That is, at step t, the higher-level policy produces a goal gt, indicating its desire for the lower-level agent to take actions that yield it an observation st+c that is close to st + gt.
