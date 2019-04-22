derive policy gradient theorems for options and propose a new option-critic architecture capable of learning both the internal policies and the termination conditions of options, in tandem with the policy over options, and without the need to provide any additional rewards or subgoals.

The eight options learned in each game are learned fully end-to-end, in tandem with the feature representation, with no prior specification of a subgoal or pseudo-reward structure.

the termination gradient tends to shrink options over time. intra-option policies would quickly become deterministic. use additional rewards to encourage options that are indeed temporally extended by adding a penalty whenever a switching event occurs.  

limitation of our work is the assumption that all options apply everywhere
