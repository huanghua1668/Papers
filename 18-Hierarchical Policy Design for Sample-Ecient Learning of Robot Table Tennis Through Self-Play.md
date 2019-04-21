robot table tennis\
Playing robot table tennis games is a challenging task, as it requires understanding the physics of the robot and the game objects, planning to make contact with the ball, and reasoning about the opponent's behavior.

Training robots with physical bodies requires developing new methods and action representations that allow the learning agents to explore the space of policies efficiently.

incorporates learning into a __hierarchical control framework__ using\
a model-free __strategy layer__ (which requires complex reasoning about opponents that is diffcult to do in a model-based way)\
__model-based prediction of external objects__ (which are diffcult to control directly with analytic control methods, but governed by learnable and relatively simple laws of physics)\
__analytic controllers for the robot itself__

Human demonstrations are used to train dynamics models, which together with the analytic controller allow any robot that is physically capable to play table tennis without training episodes. Self-play is used to train cooperative and adversarial strategies on top of __model-based striking skills trained from human demonstrations__.

experiments demonstrate that __model-free variants of the policy can discover new strikes not demonstrated by humans and achieve higher performance at the expense of lower sample-efficiency__.

They already know their bodies well and are aware of their physical abilities. They are also aware of how the world and the common objects in it work.

__Model-Based Learning__\
In table tennis, most of the time, the ball is travelling in the air where it is only subject to gravity, drag, and Magnus forces due to its spin. If the dynamics of the ball’s motion and contact are understood, it is possible to both predict the ball’s future states and to control for it by picking the right paddle motion to execute the desired contact.\
uses observations in the environment to __train dynamics models that predict the future state of the ball due to its free motion__ and due to contact with the player paddle. Such dynamics models can inform the learning agents about the consequences of the actions they are exploring. In contrast, in end-to-end model-free learning approaches, the agents are required to implicitly learn how the environment works in order to best exploit it and increase their reward. By capturing the simple physics of table tennis in dynamics models the method allows the learning agents to focus on learning high-level behaviors, thereby improving sample efficiency.

__Design of high-level options__\
ball landing\
paddle motion\
low-level skills like how to move the paddle to a desired position are implemented using analytic controllers that do not require learning. Once the agent makes a decision about a desired paddle motion state to execute on the robot at a desired time, the desired paddle motion state can be achieved in a number of ways. For one, it could be learned as a separate task using supervised learning or reinforcement learning\
During each strike, the impact of a player’s paddle on the ball depends only on the state of the paddle during the short period of time when the paddle and the ball are in contact. In other words, all the actions taken by the players up to the moment of contact are just in service to achieving a paddle motion state at the moment of contact with the ball.

There are multiple options for selecting a subset of the predicted trajectory T as potential striking targets. In the current implementation, a heuristic is used to select all points that lie between the two planes 

__decomposes table tennis into a hierarchy of subtasks__\
decomposition breaks down the task in a way that is consistent with the strengths of these different approaches. Using model free techniques for strategy allows much better exploration, without being very expensive since only a few dimensions are optimized. Meanwhile, model based parts are trained with supervised models and it is easy to generate data for this part.

hierarchical policy design used in this work allows the table tennis agent to combine model-based, model-free, and analytic skills in a single policy

In order to achieve higher sample-efficiency, the approach proposed in this work uses reinforcement learning and supervised learning strategically.\

__striking mode and waiting mode__\
 The agent’s mode changes automatically based on the current state of the game. As soon as the opponent hits the ball, the agent enters the striking mode. The agent stays in the striking mode until it hits the ball back. At that moment, it enters the waiting mode.
 
task hierarchy offers a high-level view of the game to the learning agents. Instead of continuously making decisions at every timestep, they make one decision per rally. The agents decide only targets for the land-ball skill: given an incoming ball, find and execute a paddle trajectory to hit the ball in a way that it lands on the opponent side

the training and debugging process is more manageable when focusing on one skill at a time. Decomposing the task makes it easier to develop and evaluate each component before it is integrated into the whole system.

hierarchy allows each skill to be developed, evaluated, and debugged in isolation. If necessary, the skills can be given perfect observations and perfect actions to fully evaluate their individual limits and errors. Such a setup allows for identifying and addressing inefficiencies in each component of the system before they are integrated and fine-tuned together as a whole.

the top-level strategy skill is trained with reinforcement learning\
hierarchical policy does not restrict the agent’s ability to explore the space of all possible game-play strategies and techniques.

learning a task end-to-end may cause the model to relearn the primitive skills over and over in various states in presence of changing inputs. In other words, an end-to-end approach needs to learn to properly generalize its behavior to invariant states. 

predicting the behavior of the ball after contact is more challenging than predicting its free motion for the model.

long time horizon helps eliminate the reward delay, which can make learning this skill more efficient.

targets provided by the higher-level skills to the lower-level skills in this work have semantic meanings-such as ball
target location, or paddle orientation at contact.
