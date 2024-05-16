---
layout: page
title: "Likelihood"
---

# Likelihood

Before diving in, we need a good understanding of what a 'power' is.
Power: is the prob of correctly rejecting H0, often denoted as \( 1 - β )\. 
Another way of writing that is
$$
Power = P(rejecting H0 | H0 is false)
$$

More related to Bayesian, as it compares the likelihood of different hypothesis,
rather than testing just the H0 as in frequentist.

Here is the Binomial Likelihood function:
$$
L(φ) = n! / (x! * (n-x)!) * φ^x * (1-φ)^(n-x)
$$

This is denoted as 'for a φ of some experiment, the likelihood is y%'.

Likelihood ratio: the ratio of one likelihood to another