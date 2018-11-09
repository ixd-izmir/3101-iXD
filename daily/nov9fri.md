
# Processing

## Review

hw6: matrix

[repeat: embedded iteration](http://formandcode.com/code-examples/repeat-embedded) example from Form+Code


## Theory

- Conditional statements
- Bounds of a circle
- loading images: [Shiffman's tutorial](https://www.youtube.com/watch?v=-f0WEitGmiw), [Processing tutorial](https://processing.org/tutorials/pixels/)- read until "Pixels, pixels, and more pixels", starting from this one, there is advanced topics which we didn't introduce yet, like arrays and functions... don't get confused
- loading svg: [Processing tutorial](https://www.processing.org/examples/loaddisplaysvg.html)

[saveFrame()](https://processing.org/reference/saveFrame_.html)

- [openFrameworks](https://openframeworks.cc)
- [cinder](https://libcinder.org)
- [What is Kinect?](https://www.youtube.com/watch?v=bydLSVVuaRM)

examples using Kinect+Processing:
- [Biborg Lab - Interactive Glitch Art: Motion Sensor with Kinect 1 and Processing](https://www.youtube.com/watch?v=xw-7R1tRvdM)
- [Brother System - Installation Interactive Kinect + Processing](https://www.youtube.com/watch?v=KLOB-T1mgdY)
- [Shifmann's Kinect+Processing Tutorial](https://www.youtube.com/watch?v=QmVNgdapJJM)

## Practice 

step1: Bounds of a circle (bonus: synthesized sound, more info [here](https://processing.org/tutorials/sound/). more examples on sound under File->Examples->Libraries->Sound->Oscillators)
[circularButtonWithSound.pde](https://github.com/ixd-izmir/ixd3101f18/blob/master/src/circularButtonWithSound.pde)

step2: Motion - make the button move from left to right of the canvas

step3: Button disappears from the right edge, bring it back from the left

step4: Create multiple instances of the same circular button (with motion) using a for loop

step5: Change the position of the button randomly on the canvas and try to catch it with the mouse, increase the score
[tinyGame.pde](https://github.com/ixd-izmir/ixd3101f18/blob/master/src/tinyGame.pde)


## Homework (Due: Nov 16, Fri 8:30)

Create a small visual world for the viewer to explore. As a point of departure, think about [Zork](https://www.youtube.com/watch?v=xzUagi41Wo0) or [Howling Dogs](http://slimedaughter.com/games/twine/howlingdogs/), but with images in place of text. (Use your own images, either illustrations, diagrams, photographs, or collages.) The world is composed of three "rooms." The viewer can choose to navigate between these rooms with buttons that you create. The viewer can also explore and activate events in each room through rollovers and clicking on elements. *Use custom functions to make your code modular. As a hint, create one function for each "room."*

Upload to h7-(code:explorersWorld) as ixd3101f18_h7_NameSurname.zip
