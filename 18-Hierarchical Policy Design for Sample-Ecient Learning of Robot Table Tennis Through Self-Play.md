robot table tennis

Training robots with physical bodies requires developing new methods and action representations that allow the learning agents to explore the space of policies efficiently.

incorporates learning into a __hierarchical control framework__ using\
a model-free __strategy layer__ (which requires complex reasoning about opponents that is diffcult to do in a model-based way)\
__model-based prediction of external objects__ (which are diffcult to control directly with analytic control methods, but governed by learnable and relatively simple laws of physics)\
__analytic controllers for the robot itself__

Human demonstrations are used to train dynamics models, which together with the analytic controller allow any robot that is physically capable to play table tennis without training episodes. Self-play is used to train cooperative and adversarial strategies on top of __model-based striking skills trained from human demonstrations__.

experiments demonstrate that __model-free variants of the policy can discover new strikes not demonstrated by humans and achieve higher performance at the expense of lower sample-efficiency__.
