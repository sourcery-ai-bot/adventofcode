# Advent of Code - 2021

This year I want to challange myself and try to solve the challanges in a familiar language and one that is completely new to me.
My solutions are therefore written in Python, my main development language, and Haskell, something I've been wanting to try out for a while.

## Requirements

### Python
Python 3.8+, numpy 1.18.4+

### Haskell
It was surprisingly difficult to get things running. I installed the haskell-platform package for ubuntu and couldn't get things running despite it being the seemingly defacto standard to get started.
I ended up installing:

- [stack](https://docs.haskellstack.org/en/stable/README/)
- the Haskell extension for VSCode

## Structure

Each day has two parts, the second one usually builts upon the first task and complicates things.
The input is for a given day `x` is always named `d{x}_input.txt`. The scripts/programs expect the file contents via `stdin`.

That means to run them:

```bash
export x=1

# python
cat d${x}_input.txt | python d${x}p1.py
cat d${x}_input.txt | python d${x}p2.py

# Hskl
cat d${x}_input.txt | stack runhaskell d${x}p1.hs
cat d${x}_input.txt | stack runhaskell d${x}p1.hs
```
