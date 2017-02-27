# number-sorting problem
Write a method `reorder` that takes a queue of integers as a parameter and that puts the integers into sorted (nondecreasing) order assuming that the queue is already sorted by absolute value.

For example, suppose that a variable called q stores the following sequence of values:

`front [1, 2, -2, 4, -5, 8, -8, 12, -15, 23] back`
Notice that the values appear in sorted order if you ignore the sign of the numbers.

The call of `reorder(q)` should reorder the values so that the queue stores this sequence of values:

`front [-15, -8, -5, -2, 1, 2, 4, 8, 12, 23] back`
Notice that the values now appear in sorted order taking into account the sign of the numbers.

**You may use one stack as auxiliary storage to solve this problem.**
