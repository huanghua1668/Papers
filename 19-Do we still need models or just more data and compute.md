examples above share one crucial property, namely that they are very well, and __rather narrowly defined problems where you can either generate your own data (e.g. alphaGO)__ or have ample data available (e.g. speech). In these regimes data-driven, discriminative, black box methods such as DL shine. We can view this as interpolation problems. The input domain is well delimited, we have sufficient data to cover that input domain and interpolate between the dots. The trouble starts when we need to extrapolate.

The __most fundamental lesson of ML is the bias-variance tradeoff: when you have sufficient data, you do not need to impose a lot of human generated inductive bias on your model. You can “let the data speak”. However, when you do not have sufficient data available you will need to use human-knowledge to fill the gaps. This is precisely what happens when you extrapolate: you enter a new input domain where you have very sparse data and your trained model will start to fail__.

in certain RL problems, such as learning to play chess or GO, the input domain is so simple that you can easily build an almost perfect simulator, and hence generate an infinite data set without looking at the real world.

consider the problem is a self-driving car. In this case __there is a very long tail of traffic situations that are very rare and therefore do not show up in your dataset__. In this case a __purely data-driven method that does not try to model the world is doomed__. __These “exceptions” are currently still captured by a rule-based system__. __You need to understand how the physics of the world works, as well as the psychology and sociology of the people that populate it, perhaps all encapsulated in a simulator, in order to (learn to) plan in that world and in order to be able to face new, never encountered situations__. 

The key insight is that the __world operates in the “forward, generative, causal direction”. It’s the direction in which events cause other events to happen and get recorded on our sensors. We need remarkably few parameters to describe this world: the laws of physics are surprisingly compact to encode. This world is organized modularly, consisting of factors and actors that can be approximately modelled independently. In this world one event causes another event according to the stable laws of physics.__

__Generative models are far better in generalization to new unseen domains. Causality allows us to easily transfer predictors from one domain to the next__

__Humans have a remarkable ability to simulate counterfactual worlds__ that will never be but can exist in our minds. __We can imagine the consequences of our actions by simulating the world as it unfolds under that action__, or __we can derive what caused current events by simulating possible worlds that may have led to it__. Clearly, __this ability depends on our intuitive understanding of physics and/or psychology__.

__Discriminative methods__ operate in the reverse direction. __They are mappings from observations directly back to possible causes: predict the word that cause this sound wave in my microphone, predict the object that causes these pixel values in my camera. In this direction things are not simple but everything is highly entangled and complicated. We first need to disentangle the input to make meaningful predictions. But, in narrowly defined domains, these methods work really well because they learn the map that we want to use for predictions. In contrast, inverting a generative model is often intractable and computationally demanding.__

It seems __we need to find the middle ground__. For narrowly defined domains with enough data or a really accurate simulator, you can invert the generative model into a discriminative model and you will do very well. But __when you need to generalize to new domains, i.e. extrapolate away from the data, you will need a generative model__. The generative model will be based on certain assumptions about the world, but is expected to generalize a lot better.

In conclusion I would say if we ever want to solve Artificial General Intelligence (AGI) then we will need model based RL.