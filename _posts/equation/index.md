---
layout: page
title: "Components of a Bayesian Model"
---

First and foremost we have a look at the equation.
$$
p(θ|y) = (p(y|θ) * p(θ)) / ∫p(y|θ)p(θ)dθ
$$


This should look very similar to Bayes Theorem, which is;
$$
p(A|B) = (p(B|A) * p(A)) / p(B)
$$


# Components of a Bayesian Model

We can further decompose the Bayesian Model into 3 parts;
**I will get into more in-depth explanation of each in the future

1. Likelihood: \( p(y|θ) )\
Given specific observed data (so data comes first), the function returns the 'probability' of a parameter value.
2. Prior (aka Prior Probability Distribution): \( p(θ) )\
Represents what is known or beliefs about the parameter(s) before considering the data.
3. Posterior (aka Posterior Probability Distribution): \( p(θ|y) )\
Represents the updated beliefs about the models parameters.

Therefore, a Bayesian Model is a systematic way to update prior beliefs about the parameters of a model based on new data
by using the likelihood function.


# Definition of Paremeters

For a math subject, probability is filled with a lot of words!
Retrospectively, this is what really made me struggle, so I really try to emphasize step by step and available references.

Definition: quantities that determine the characteristics of the distribution of the data.

If you come from a frequentist background, parameters are typically constants, but in bayesian context they are treated as random variables and have their own probability distributions 'estimated' from data.
Such estimations are then used for statistical inferences and predictions.


# Conceptual parameters example

Consider the following linear regression:
For the purpose of an example, let's give it a more real-world relationship by saying this represents the stock return as a function of the interest rate.

$$
y = β0 + β1χ + ε
$$

The variables β0 and β1 are both parameters that define the model.


# Summary of frequentist vs bayesian process

| Aspect              | Frequentist                                                                                                    | Bayesian                                                                                                                   |
|---------------------|----------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| Nature of Estimation| Point estimates are calculated directly from the data. The approach is primarily data-driven without considering prior beliefs. | Estimates are distributions (posterior distributions), reflecting both prior beliefs and the data. This method integrates both sources of information. |
| Output              | Provides point estimates, hypothesis tests, and confidence intervals based on the idea of repeated sampling.    | Provides posterior distributions that directly quantify the uncertainty and variability of parameters after observing data. |
| Conceptual Approach | Relies on the concept of hypothetical infinite repetitions of the same experiment to derive properties of estimators. | Treats parameters probabilistically, updating the uncertainty in parameter values as more data become available.           |

In essence, while both approaches can use the same data and similar types of models (like linear regression), they differ fundamentally in how they treat parameters and how they interpret the results of the analysis. The Bayesian approach is more dynamic, continuously refining its estimates as more data become available or as prior knowledge evolves.