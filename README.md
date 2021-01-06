# Team 11-4 Computational Structures 1D Arcade Game: Whack-a-Mole!

Started with these constraints we set for ourselves:
- a few physical buttons
- makes use of an arithmetic logic that has a boolean, addition, comparison and multiplier function
- these buttons each contain a built-in led, which will light up, signalling the user to press. more than 1 button can light up together 

Ended up with a rendition of the classic "whack-a-mole game" which has 3 buttons to be pressed around the same time when they light up. 

Technical Decisions:
- Creating our own debugging system: As logic synthesis took a minimum of 5mins, we had to write a significant amount before testing so we can save time. Batching our test cases together helped reduce the number of "compilations" required and hence save time, but the tradeoff was that we had to pay more attention to the organisation of our test cases, ensure that we know exactly which physical signs corresponded to which test cases. For instance, we used the IO shield LEDs and switches to indicate 3 things: state change, data stored in respective dffs(toggled using the respective switches) and errors. 
- Elimination of the memory unit as a separate module: Our memory DFFs were few and did not require the memory unit to be designed as a separate module from the CPU/State Machine Logic Module, as reflected in the traditional Von Neumann architecture.  As a result, we simply included the DFFs in our state logic module, but we had to pay more attention to write proper documentation for ease of understanding in interested parties.

Demo Video
https://youtu.be/sdvAechiJY8
