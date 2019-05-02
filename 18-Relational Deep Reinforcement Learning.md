introduce an approach for deep reinforcement learning (RL) that improves upon the efficiency, generalization capacity, and interpretability of conventional approaches through structured perception and relational reasoning. It uses self-attention to iteratively reason about the relations between entities in a scene and to guide a model-free policy.

Our approach advocates __learned and reusable entity- and relation-centric functions to implicitly reason over relational representations.__

contribution is founded on two guiding principles: __non-local computations using a shared function and iterative computation.__ We show that an agent which computes pairwise interactions between entities, independent of their spatial proximity, using a shared function, will be better suited for learning important relations than an agent that only computes local interactions, such as in translation invariant convolutions1. Moreover, an iterative computation may be better able to capture higher-order interactions between entities.

core idea behind RRL(Relational reinforcement learning) is to combine reinforcement learning with relational learning or Inductive Logic Programming by representing states, actions and policies using a first order (or relational) language

Our results show that in a novel navigation and planning task called Box-World, our agent finds interpretable solutions that improve upon baselines in terms of sample complexity, ability to generalize to more complex scenes 

Recent __advances in deep reinforcement learning (deep RL) are in part driven by a capacity to learn good internal representations to inform an agent’s policy__. Unfortunately, deep RL models still face important limitations, namely, __low sample efficiency and a propensity not to generalize to seemingly minor changes in the task__. These limitations suggest that large capacity deep RL models tend to __overfit to the abundant data on which they are trained__, and hence __fail to learn an abstract, interpretable, and generalizable understanding of the problem they are trying to solve__.

Moving from a __propositional to a relational__ representation facilitates generalization over goals, states, and actions, exploiting knowledge learnt during an earlier learning phase. Additionally, a relational language also facilitates the use of background knowledge. Background knowledge can be provided by logical facts and rules relevant to the learning problem.

For example in a blocks world, one could use the predicate above(S, A, B) to indicate that block A is above block B in state S when specifying background knowledge. Such predicates can then be used during learning for blocks C and D, for example.

The representational language, background, and __assumptions form the inductive bias, which guides (and restricts) the search for good policies__. The language (or declarative) bias determines the way concepts can be represented.

we translate ideas from RRL into architecturally specified inductive biases within a deep RL agent, __using neural network models that operate on structured representations of a scene – sets of entities – and perform relational reasoning via iterated, message-passing-like modes of processing. The entities correspond to local regions of an image, and the agent learns to attend to key objects and compute their pairwise and higher-order interactions.__

An important feature of model-based approaches is making general knowledge of the environment available for decision-making. Here our inductive biases for entity- and relation-centric representations and iterated reasoning reflect key knowledge about the structure of the world. 



