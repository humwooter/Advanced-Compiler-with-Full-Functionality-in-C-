#CS160 - Project6

Programming partner 1:
Name: Katya Raman
Perm  number: 4803987
Email address: katyayani@ucsb.edu
Display name: Katyayani Raman

Programming partner 2:
Name: Karanina Zim
Perm number: 4626420
Email address: karanina@ucsb.edu
Display name on Piazza: Karanina (Laszlo) Zim

#Notes (Katya Raman): 
- I used 2 late days on this lab even though I only had 1 left. I asked on Piazza about this and I was told that I could subtract a late day from a previous lab, and specify how I would like to allocate my late days here.
- I am extremely grateful for having this option. Here is how I would like to use my late days:  
    - Project 2 (1 late day): submission 63 => 3 late days left 
    -   - I used the second late day to submit my README for this project, so I would like to use this late day for project 6 instead. 
    - Project 5 (1 late day): submission 15 => 2 late days left
    - Project 6 (2 late day): I used my last two late days to complete this final project :D 

#Notes (Karanina Zim): 


Our implementation process:
1.) First, we implemented the assembly arithmetic operations. Our process for this was to pop the first value off the stack into reg eax, then pop the second value into ebx. 
  We then performed the arithmetic operation by using the appropriate x86 instruction. Given the order of the registers we used in our arithmetic instructions, 
  the result of the operation would be put into the eax register. 
  
2.) Next we implemented member, memberaccess, and assignment. These were all very similar, so once we implemented MethodCall the rest were straightforward. To implement MethodCall, we followed the 3 step process described in the discussion slides. 
    - First we implemented the pre call sequence by pushing the save caller registers (eax, ecx, and edx) to the stack. We determined the offset of the method for two cases (1: with only identifier_1 present and 2: with both identifier_1 and identifier_2 present). 
    - Next we implemented the call instruction by identifying the class name that the method belongs to. 
    - Lastly we implemented the post-return sequence by removing the method arguments from the stack, and then popping the save caller registers off of      the stack.
- Implementing these functions proved to be the most challenging part of this project. After this, implementing the rest of the visitor functions were relatively straightforward.
