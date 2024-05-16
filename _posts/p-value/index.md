---
layout: page
title: "P-value"
---

# P-value

What are they and what are they good for?

\( P-value = P(as or more extreme than our own | H0 is true) \)
↓
If H0 is true, then the prob of getting x is the p-value (%)
If the p-value < 5% (as a rule of thumb), then the H0 becomes questionable.

Thus, it is a measure used most commonly for when comparing population data to sample data
or experiments testing similar parameters in order to test a valid hypothesis.

Definition: the prob of getting the observed or more extreme data, assuming the null hypothesis is true
≡ prob of observing some data ≠ prob of a theory

Note: p-values are NOT used in Bayesian stat. The concept was originally introduced to reduce bias and get a 
numerical representation of how surprising the data was, but given some of its inherent problems, some take the Bayesian 
method of solving it.

Bayesian stat is required for the prob of a theory rather than simply a dataset.

* the more confident we are that a hypothesis is true if the p-value is lower


# Type I and II errors

Type I: prob of finding significant result, when in actuality there is no true effect (often referred to as 'false positive')
Type II: prob of rejecting significant result, when there is true effect ('false negative)
