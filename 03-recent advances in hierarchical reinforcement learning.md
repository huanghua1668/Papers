Recent attempts to combat the curse of dimensionality have turned to principled ways of exploiting temporal abstraction, where decisions are not required at each step, but rather invoke the execution of temporally-extended activities which follow their own policies until termination.

__Semi-Markov decision process (SMDP)__ in which the amount of time between one decision and the next is a random variable. it is usual to treat the system as remaining in each state for a random waiting time, at the end of which an instantaneous transition occurs to the next state. 

Both the Q-learning and Sarsa learning algorithms also apply to SMDPs. Parr (1998) proved that it converges under essentially the same conditions required for Q-learning convergence

The primary motivation for the options framework is to permit one to add temporally-extended activities to the repertoire of choices available to an RL agent, while at the same time not precluding planning and learning at the finer grain of the core MDP. The emphasis is therefore on augmentation rather than simplification of the core MDP.

In the current state-of-the-art, the designer of an RL system typically uses prior knowledge about the task to add a specific set of options to the set of primitive actions available to the agent. In some cases, complete option policies can be provided; in other cases, option policies can be learned using, for example, intra-option learning methods together with option-specific reward functions that are provided by the designer. __Providing options and their policies a priori is an opportunity to use background knowledge about the task to try to accelerate learning and/or provide guarantees about system performance during learning__. 

When option policies are learned, they usually are policies for efficiently achieving subgoals, where a __subgoal is often a state, or a region of the state space, such that reaching that state or region is assumed to facilitate achieving the overall goal of the task__.

_Hierarchies of Abstract Machines_\
Like the options formalism, HAMs exploit the theory of SMDPs, but the emphasis is on simplifying complex MDPs by restricting the class of __realizable policies__ rather than __expanding the action choices__. In this respect, as pointed out by Parr (1998), it has much in common with the multilayer approach for controlling large Markov chains described by Forestier and
Varaiya (1978) who considered a two-layer structure in which the lower level controls the plant via one of a set of pre-de®ned regulators. The higher level, the supervisor, monitors the behavior of the plant and intervenes when its state enters a set of boundary states. Intervention takes the form of switching to a new low-level regulator.

one can think of a __HAM as a method for delineating a possibly drastically restricted set of policies for M. This restriction is determined by the prior knowledge that the HAM's designer, or programmer, has about what might be good ways to control M__.

_Hierarchical memory_\
Finite memory structures can be defeated by long sequences of mostly irrelevant observations and actions that conceal a critical past observation

