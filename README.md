#CS160 - Project6

Programming partner 1: Name: Katya Raman Perm number: 4803987 Email address: katyayani@ucsb.edu Display name: Katyayani Raman

Programming partner 2: Name: Karanina Zim Perm number: 4626420 Email address: karanina@ucsb.edu Display name on Piazza: Karanina (Laszlo) Zim

#Notes (Katya Raman):

I used 2 late days on this lab even though I only had 1 left. I asked on Piazza about this and I was told that I could subtract a late day from a previous lab, and specify how I would like to allocate my late days here.
I am extremely grateful for having this option. Here is how I would like to use my late days:
Project 2 (1 late day): submission 63 => 3 late days left
I used the second late day to submit my README for this project, so I would like to use this late day for project 6 instead.
Project 5 (1 late day): submission 15 => 2 late days left
Project 6 (2 late day): I used my last two late days to complete this final project :D

#Notes (Karanina Zim):
This submission will use two Slip Days.
I have previously used a Slip Day on Project 3
and one on Project 5
so this submission will use up the remaining two Slip Days!
Thank you so much for the Slip Days!

Our implementation process: 
1.) First, we implemented the assembly arithmetic operations. 
Our process for this was to pop the first value off the stack into reg eax, 
then pop the second value into ebx. We then performed the arithmetic operation 
by using the appropriate x86 instruction. Given the order of the registers we 
used in our arithmetic instructions, the result of the operation would be put 
into the eax register. After this we implemented control flow using jumps.

2.) Next we implemented visitMethodNode, visitMethodCallNode, and 
visitMethodBodyNode. To implement visitMethodNodeNode, visitMethodCallNode, 
and visitMethodBodyNode we followed the 5 step process and implementation 
details described in the discussion slides. We implemented the pre-call 
sequence and post-return sequence in MethodNode, the method prologue and 
method epilogue in MethodCallNode, and the method body in MethodBodyNode. Then 
we implemented visitNewNode, visitVariableNode, visitAssignmentNode, and 
visitMemberAccessNode. These implementations follow pretty naturally from our 
MethodCallNode implementation but there were a lot of details regarding stack
and heap manipulation to hash out in the process.

Thus, implementing these functions proved to be the most challenging part of this project. 
After this, implementing the rest of the visitor functions were relatively straightforward.
