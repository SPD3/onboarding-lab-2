# Week 2 Lab: System Verilog

Why do you think the reason for these different testing approaches are? What are their advantages and disadvantages?
I think the reason for these different testing approaches is the different number of inputs that each exercise has. Exercise 1 has a set number of different inputs, so all of those inputs are tested against exhaustively. Exercise 2 has a set number of inputs however the program can last a large number of cycles so it is more important to test the large number of cycles than it is to test all of the inputs. Exercise 3 has an even larger number of inputs and can last an infinite number of cycles, so it is most time efficient to randomly pick out inputs and run them for a large number of cycles. The exhaustive method has the advantage that it tests all possible inputs, however depending on how many it can take a long time. The sampling method has the advantage that specific edge cases can be tested however it has the disadvantage that there may be incorrect inputs that are missed during testing. The random method has the advantage that over time all possible inputs will be tested however for each run it is unlikely that every or any edge case will be tested.
