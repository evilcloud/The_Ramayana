# The Ramayana -- the graph

![](media/MOSHED-2020-9-14-14-47-23.gif)
A graph with the full consideration of every mentioned character, location and event in the Ramayana. The source is represented in a set of commands in [Cypher](https://www.opencypher.org/) and is split by chapters in the book.

Attention: in order to keep flexibility, no preloading of the old items is present and only new characters are defined in each chapter. There are two ways to make it work:

1. Merge all files into one
2. Load each chapter individually (in descending order) and run `MATCH (n) RETURN n` before each new load
