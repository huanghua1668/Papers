options—closed-loop policies for taking action over a period of time\
Human decision making routinely involves choice among temporally extended courses of action over a broad range of time scales.\
MDPs as they are conventionally conceived do not involve temporal abstraction or temporally extended action. They are based on a discrete time step: the unitary action taken at time t affects the state and reward at time t+1. There is no notion of a course of action persisting over a variable period of time. As a consequence, conventional MDP methods are unable to take advantage of the simplicities and efficiencies sometimes available at higher levels of temporal abstraction.\
the essence of analyzing temporally abstract actions in AI applications: goal directed behavior involves multiple overlapping scales at which decisions are made and modified\
Options consist of three components: a policy $\pi: S\times A \rightarrow [0,1]$, a termination condition $\beta: S^+ \rightarrow [0,1]$, and an initiation set $I \in S$. An option $I, \pi, \beta$ is available in state $s_t$ if and only if $s_t \in I$. If the option is taken, then actions are selected according to $\pi$ until the option terminates stochastically according to $\beta$.\
Sometimes it is useful for options to “timeout”, to terminate after some period of time has elapsed even if they have failed to reach any particular state. This is not possible with Markov options because their termination decisions are made solely on the basis of the current state, not on how long the option has been executing. To handle this and other cases of interest we allow semi-Markov options, in which policies and termination conditions may make their choices dependent on all prior events since the option was initiated. In general, an option is initiated at some time, say t , determines the actions selected for some number of steps, say k, and then terminates in $s_{t+k}$ . At each intermediate time $\tau$; $t\geq tau\less t+k$, the decisions of a Markov option may depend only on s, whereas the decisions of a semi-Markov option may depend on the entire preceding sequence, but not on events prior to $s_t$ . We call this sequence the history from $t$ to $\tau$ and denote it by $h_{t\tau}$.\
In semi-Markov options, the policy and termination condition are functions of possible histories \

When initiated in a state $s_t$, policy over options $\mu: S\times O\rightarrow[0,1]$ selects an option $o\in O_{s_t}$ according to probability distribution $\mu(s_t, \cdot)$. The option $o$ is then taken in $s_t$, determining actions until
it terminates in $s_{t+k}$, at which time a new option is selected, according to $\mu(s_{t+k})$. In this way a policy over options, $\mu$, determines a conventional policy over actions, or flat policy, $\pi=flat(\mu)$.

even if a policy is Markov and all of the options it selects are Markov, the corresponding flat policy is unlikely to be
Markov if any of the options are multi-step (temporally extended). The action selected by the flat policy in state sτ depends not just on sτ but on the option being followed at that time, and this depends stochastically on the entire history htτ since the policy was initiated at time t. By analogy to semi-Markov options, we call policies that depend on histories in this way semi-Markov policies. Note that semi-Markov policies are more specialized than nonstationary policies. Whereas nonstationary policies may depend arbitrarily on all preceding events, semi-Markov policies may depend only on events back to some particular
time. 

__Temporal abstraction provides the flexibility to greatly reduce computational complexity, but can also have the opposite effect if used indiscriminately__

It is natural to think of options as achieving subgoals of some kind, and to adapt each option’s policy to better achieve its subgoal.

We assume the subgoals are given and do not address the larger question of the source of the subgoals

Representing knowledge flexibly at multiple levels of temporal abstraction has the potential to greatly speed planning and learning on large problems. 
