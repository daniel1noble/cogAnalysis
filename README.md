# Tutorial on Analysing Individual-Level Learning Data

This package is meant to be a very brief, but hopefully useful, tutorial on how one can make use of individual-level choice data to model learning rates. We also help users interpret the output from these models. Note that this is not a guide to all situations, and **does not** deal with every different experiment, but hopefully will aid in running and understanding models so that they can be applied (in possibly more advanced ways) to different learning experiments. You can make use of this guide along with the [`cogdat`](https://github.com/daniel1noble/cogdat) package, which will help process longitudinal datasets that are useful when running experiments into vertical format for analysis.

You can download this package, or you can install it directly into R as follows:

```
install.packages("devtools")
devtools::install_github(daniel1noble/cogAnalysis)
```

Alternatively, you can just simply download the entire zip package and work with it just as easy in R from your computer. 

# Let's start.....

For simplicity I've simulated some choice data, which is often what we collect during learning experiments. It's basically coded in a binary fashion ('0' for incorrect; '1' for correct), for the most part. However,it can be more complex should many choices be given to animals. We also, often have latency data (time until the correct choice is made), so I have also simulated this, which is often quite skewed in practice. It usually normalizes reasonably well though after a log transformation. In some cases, animals may not actually do the task. In these cases we just assume missing data as there was no choice, and obviously you cannot assign a latency to this situation either. 



