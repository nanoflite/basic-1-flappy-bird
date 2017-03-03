# FLAPPY BIRD

Written for my BASIC-1 computer.

## Loader (FLAPPY.BAS)

I had to split up the program due to memory limitations.

The loader first loads the program that defines the custim graphics characters.
Next it loads and runs the actual game.

There is still a bug in the BASIC implementation that prevents the loader from working correctly.

## Character loader (FLAPPYCH.BAS)

Loads and installs the custom characters using `DEFCHAR`.

Line 1000 - 1080 contains the loader.

Line 5000 - 5150 contains the graphics data

## The game (FLAPPYGA.BAS)

Lines < 500 contain the setup. We make use of `GOSUB` to bring some structure in the code.

Lines 500 - 810 contain the game loop.

We make use of the following custom BASIC commands:

  * PLOT
  * CHARAT
  * BUTTON
  * DEFCHAR

There is one special trick at lines 3100 - 3220. The video driver is too slow to scroll the line at the bottom of the screen. Therefore we dynamically change the characters in the videobank to simulate animation.

## A list of sub routines

  * 1000: plot bird, Y
  * 1100: plot bird up, Y
  * 1200: plot bird down, Y
  * 1300: clear bird
  * 1400: detect hit
  * 1500: game over

  * 2000: plot pipe P (1..3)
  * 2200: clear pipe on left side of screen
  * 2300: choose new pipe P X and Y
  * 2310: choose new pipe P Y
  * 2500; show score

  * 3000: plot striped wall
  * 3100: move striped wall

  * 4000: setup graphics and init screen.
  * 4200: clear screen part
  * 4300: start screen

