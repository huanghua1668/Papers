 agent is equipped with a set of general auxiliary tasks, that it attempts to learn simultaneously via off-policy RL.
 
prior knowledge that is specific to a task. Moreover, they often bias the control policy in a certain – potentially suboptimal -direction. 

define auxiliary rewards on a raw sensory level – e.g. whether a touch is detected or not. Or, alternatively, define them on a higher level that requires a small amount of pre-computation of entities, e.g. whether any object moved or whether two objects are close to each other in the image plane. Based on these basic auxiliary tasks, the agent must effectively explore its environment until more interesting, external rewards are observed; an approach which is inspired by the playful phase of childhood in humans.

In contrast to these approaches we here learn skills that are semantically grounded via auxiliary rewards, instead of automatically discovering a decomposed solution to a single task.

The approach we take for scheduling the learning and execution of different auxiliary tasks can be understood from the perspective of “teaching” a set of increasingly more complicated problems. these approaches typically consider internal measures such as learning progress to define rewards, rather than auxiliary tasks that are grounded in physical reality.

the problem formulation described above bears similarities to several other multi-task RL formulations. 
