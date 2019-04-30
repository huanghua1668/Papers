This paper introduced FeUdal Networks, a novel architecture that formulates sub-goals as directions in latent state space, which, if followed, translate into a meaningful behavioural primitives.

FuN significantly improves long-term credit assignment and memorisation.

Our framework employs a Manager module and a Worker module. The Manager operates at a lower temporal resolution and sets abstract goals which are conveyed to and enacted by the Worker. The Worker generates primitive actions at every tick of the environment.

benefits – in addition to facilitating very long timescale credit assignment it also encourages the emergence of sub-policies associated with different goals set by the Manager.

key insights from FRL are that goals can be generated in a top-down fashion, and that goal setting can be decoupled from goal achievement; a level in the hierarchy communicates to the level below it what must be achieved, but does not specify how to do so. Making higher levels reason at a lower temporal resolution naturally structures the agents behaviour into temporally extended sub-policies.


The top level, the Manager, sets goals at a lower temporal resolution in a latent state-space that is itself learnt by the Manager. The Worker is motivated to follow the goals by an intrinsic reward. no gradients are propagated between Worker and Manager; the Manager receives its learning signal from the environment alone.

a policy-over-options can be learned using standard techniques by treating options as actions.

provide an inductive bias

Manager internally computes a latent state representation st and outputs a goal vector gt. The Worker produces actions conditioned on external observation, its own state, and the Managers goal.
