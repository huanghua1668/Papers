machines should (1) build causal models of the world that support explanation and understanding, rather than merely solving pattern recognition problems; (2) ground learning in intuitive theories of physics and psychology to support and enrich the knowledge that is learned; and (3) harness compositionality and learning-to-learn to rapidly acquire and generalize knowledge to new tasks and situations. 

__first set of ingredients focuses on developmental “start-up software__,” or cognitive capabilities present early in development.  two pieces of developmental start-up software. First is intuitive physics (sect. 4.1.1): Infants have primitive object concepts that allow them to track objects over time and to discount physically implausible trajectories. Equipped with these general principles, people can learn more quickly and make more accurate predictions. Although a task may be new, physics still works the same way. A second type of software present in early development is intuitive psychology (sect. 4.1.2): Infants understand that other people have mental states like goals and beliefs, and this understanding strongly constrains their learning and predictions. 

Early in development, humans have a foundational understanding of several core domains INCLUDING NUMBER, SPACE, PSYCHOLOGY.Whether learned or innate, important physical concepts are present at ages far earlier than when a child or adult learns to play Frostbite, suggesting these resources may be used for solving this and many everyday physics-related tasks.

__“intuitive physics engine” approach__ : recent approach sees intuitive physical reasoning as similar to inference over a physics software engine, the kind of simulators that power modern-day animations and games.  people reconstruct a perceptual scene using internal representations of the objects and their physically relevant properties (such as mass, elasticity, and surface friction) and forces acting on objects (such as gravity, friction, or collision impulses). Relative to physical ground truth, the intuitive physical state representation is approximate and probabilistic, and oversimplified and incomplete in many ways. Still, it is rich enough to support mental simulations that can predict how objects will move in the immediate future, either on their own or in responses to forces we might apply.

Intuitive psychology provides a basis for efficient learning from others, especially in teaching settings with the goal of communicating knowledge efficiently. intuitive psychology lets us infer the beliefs, desires, and intentions of the experienced player. 

__Learning as rapid model building: second set of ingredients focus on learning__. Although there are many perspectives on learning, we see model building as the hallmark of human-level learning, or explaining observed data through the construction of causal models of the world (sect. 4.2.2). From this perspective, the early-present capacities for intuitive physics and psychology are also causal models of the world. A primary job of learning is to extend and enrich these models and to build analogous causally structured theories of other domains. human learning is distinguished by its richness and its efficiency. compositionality and learning-to-learn are ingredients that make this type of rapid model learning possible 

Even with just a few examples, people can learn remarkably rich conceptual models. One indicator of richness is the variety of functions that these models support: classification, prediction, action, imagination, explanation, composition.  human capacity for one-shot learning suggests that these models are built upon rich domain knowledge rather than starting from a blank slate 

__three main ingredients – compositionality, causality, and learning-to-learn__ – that were important to the success of this framework and, we believe, are important to understanding human learning as rapid model building more broadly.

Compositionality is the classic idea that new representations can be constructed through the combination of primitive elements. Structural description models represent visual concepts as compositions of parts and relations, which provides a strong inductive bias for constructing models of new concepts 

To capture the full extent of the mind’s compositionality, a model must include explicit representations of objects, identity, and relations, all while maintaining a notion of “coherence” when understanding novel configurations. 

a generative model describes a process for generating data, or at least assigns a probability distribution over possible data points. Causality refers to the subclass of generative models that resemble, at an abstract level, how the data are actually generated. Relating data to their causal source provides strong priors for perception and learning, as well as a richer basis for generalizing in new ways and to new tasks. 

people also understand scenes by building causal models. Human-level scene understanding involves composing a story that explains the perceptual observations, drawing upon and integrating the ingredients of intuitive physics, intuitive psychology, and compositionality

__A causal model__ has to be more complex, gluing together object representations and explaining their interactions with intuitive physics and intuitive psychology, much __like the game engine that generates the game dynamics and, ultimately, the frames of pixel images__. Inference is the process of inverting this causal generative model, explaining the raw pixels as objects and their interactions.

One way people acquire this prior knowledge is through “learning-to-learn,” a term introduced by Harlow (1949) and closely related to the machine learning notions of “transfer learning,” “multitask learning,” and “representation learning.” learning-to-learn can occur through the sharing of features between the models learned for old objects or old tasks and the models learned for new objects or new tasks. To gain the full benefit that humans get from learning-tolearn, however, AI systems might first need to adopt the more compositional (or more language-like) and causal forms of representations 

in video games, human immediately parses the game environment into objects, types of objects, and causal relations between them. People also understand that video games like these have goals, which often involve approaching or avoiding objects based on their type. general world knowledge and previous video games may help inform exploration and generalization in new scenarios, helping people learn maximally from a single mistake or avoid mistakes altogether.

When humans or machines make inferences that go far beyond the data, strong prior knowledge (or inductive biases or constraints) must be making up the difference

A generic network trained on dynamic pixel data might learn an implicit representation of these concepts, but would it generalize broadly beyond training contexts as people’s more explicit physical concepts do?

the importance of early inductive biases, including core concepts such as number, space, agency, and objects, as well as powerful learning algorithms that rely on prior knowledge to extract knowledge from small amounts of training data. If this network has actually learned something like Newtonian mechanics, then it should be able to generalize to interestingly different scenarios 

__third set of ingredients: Thinking Fast__ it has been proposed that humans can approximate Bayesian inference using Monte Carlo methods, which stochastically sample the space of possible hypotheses and evaluate these samples according to their consistency with the data and prior knowledge. people employ inductive biases not only to evaluate hypotheses, but also to guide hypothesis selection. children can use high-level abstract features of a domain to guide hypothesis selection

Model-based planning is an essential ingredient of human intelligence, enabling flexible adaptation to new tasks and goals; it is where all of the rich model-building abilities discussed in the previous sections earn their value as guides to action

one can design numerous variants of this simple video game that are identical except for the reward function; that is, governed by an identical environment model of state-action–dependent transitions. We conjecture that a competent Frostbite player can easily shift behavior appropriately, with little or no additional learning, and it is hard to imagine a way of doing that other than having a model-based planning approach in which the environment model can be modularly combined with arbitrary new reward functions and then deployed immediately for planning. skills become “habitized”.

human brain effectively benefits from even more experience through evolution. If deep learning researchers see themselves as trying to capture the equivalent of humans’ collective evolutionary experience,

intuitive physics and psychology of infants are likely limited to reasoning about objects and agents in their immediate spatial and temporal vicinity and to their simplest properties and states. But with language, older children become able to reason about a much wider range of physical and psychological situations 

humans can quickly learn the basics of the game through a combination of explicit instruction, watching others, and experience.

Comparing the learning speeds of humans and neural networks on specific tasks is not meaningful, because humans have extensive prior experience

DQN embodies the strongly empiricist approach characteristic of most connectionist models: very little is built into the network apart from the assumptions about image structure inherent in convolutional networks, so the network has to essentially learn a visual and conceptual system from scratch for each new game. DQN was trained on 200 million frames from each of the games, which equates to approximately 924 hours of game time (about 38 days), or almost 500 times as much experience as the human received.

non-professional humans can grasp the basics of the game after just a few minutes of play. We speculate that people do this by inferring a general schema to describe the goals of the game and the object types and their interactions, using the kinds of intuitive theories, model-building abilities and model-based planning mechanisms.

deep networks learn gradually over many thousands of game episodes, take a long time to reach good performance, and are locked into particular input and goal patterns. people understand enough to invent or accept new goals, generalize over changes to the input, and explain the game to others. 

Human learners – unlike DQN and many other deep learning systems – approach new problems armed with extensive prior experience. The human is encountering one in a years-long string of problems, with rich overlapping structure. Humans as a result often have important domain-specific knowledge for these tasks, even before they ‘begin.’ The DQN is starting completely from scratch.”

How do we bring to bear rich prior knowledge to learn new tasks and solve new problems so quickly? What form does that prior knowledge take, and how is it constructed, from some combination of inbuilt capacities and previous experience?

__Autonomous driving__. Perfect autonomous driving requires intuitive psychology. Beyond detecting and avoiding pedestrians, autonomous cars could more accurately predict pedestrian behavior by inferring mental states, including their beliefs (e.g., Do they think it is safe to cross the street? Are they paying attention?) and desires (e.g., Where do they want to go? Do they want to cross? Are they retrieving a ball lost in the street?). Similarly, other drivers on the road have similarly complex mental states underlying their behavior (e.g., Does he or she want to change lanes? Pass another car? Is he or she swerving to avoid a hidden hazard? Is he or she distracted?). This type of psychological reasoning, along with other types of model-based causal and physical reasoning, are likely to be especially valuable in challenging and novel driving circumstances for which there are few relevant training data (e.g., navigating unusual construction zones, natural disasters).

__Comments__\
we believe that humanlevel intelligence can be achieved only through open-ended learning, that is, the cumulative learning of progressively more complex skills and knowledge, driven by intrinsic motivations, which are motivations related to the acquisition of knowledge and skills rather than material resources 

Human-like learning and decision making surely do depend upon rich internal models; the learning process must be informed and constrained by prior knowledge, whether this is part of the agent’s initial endowment or acquired through learning; and naturally, prior knowledge will offer the greatest leverage when it reflects the most pervasive or ubiquitous structures in the environment, including physical laws, the mental states of others, and more abstract regularities such as compositionality and causality.

two domains Lake and colleagues focus most upon – physics and theory of mind – are amenable to such an approach, in that these happen to be fields for which mature scientific disciplines exist. This provides unusually rich support for hand design of cognitive models. However, it is not clear that such hand design will be feasible in other more idiosyncratic domains where comparable scaffolding is unavailable.

an agent’s models should be calibrated to its tasks. This is essential for models to scale to real-world complexity, because it is usually too expensive, or even impossible, for a system to acquire and work with extremely fine-grained models of the world 
