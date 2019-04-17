Where to allocate resources most productively
 
The brain does not learn by implementing a single, global optimization principle within a uniform and undifferentiated neural network (Marblestone et al., 2016). Rather, biological brains are modular, with distinct but interacting subsystems underpinning key functions such as memory, language, and cognitive control

Rather than processing all input in parallel, visual attention shifts strategically among locations and objects, centering processing resources and representational coordinates on a series of regions in turn. Detailed neurocomputational models have shown how this piecemeal approach benefits behavior, by prioritizing and isolating the information that is relevant at any given moment. Attentional mechanisms have been a source of inspiration for AI architectures that take ‘‘glimpses’’ of the input image at each step, update internal state representations, and then select the next location to sample 

accuracy and computational efficiency, show striking gains in performance over deep RL networks, particularly early on during learning

intelligent behavior relies on __multiple memory systems__ (Tulving, 1985). These will include not only reinforcement-based mechanisms, which allow the value of stimuli and actions to be learned incrementally and through repeated experience, but also instancebased mechanisms, which allow experiences to be encoded rapidly (in ‘‘one shot’’) in a content-addressable store 

complex, highly structured sequential environments such as video games.

Experiences stored in a memory buffer can not only be used to __gradually adjust__ the parameters of a deep network toward an optimal policy, as in DQN, but can also __support rapid behavioral change based on an individual experience__. 

 key ingredients of human intelligence that are already well developed in human infants but lacking in most AI systems. Among these capabilities are __knowledge of core concepts relating to the physical world, such as space, number, and objectness, which allow people to construct compositional mental models that can guide inference and prediction__. Human cognition is distinguished by its ability to rapidly __learn about new concepts from only a handful of examples, leveraging prior knowledge to enable flexible inductive inferences__. Humans also excel at generalizing or transferring generalized knowledge gained in one context to novel, previously unseen domains. the key characteristics that give human planning abilities their power. In particular, we suggest that a general solution to this problem will require understanding __how rich internal models, which in practice will have to be approximate but sufficiently accurate to support planning, can be learned through experience, without strong priors being handcrafted into the network by the experimenter__.
 
We think that ultimately these flexible, combinatorial aspects of planning will form a critical underpinning of what is perhaps the __hardest challenge for AI research: to build an agent that can plan hierarchically__
