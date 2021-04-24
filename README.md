# Project Name
MSCH-C220 Game Jam, April 24 2021

## Theme
The idea of a survival based game requires you to think about death in terms of completing the level, and the game ends when you die. You only have 3 deaths before you lose the game, so in our eyes, every death counts, so the goal is to optimize the time and score with the lives you have.

## Game Play
The goal of this top-down 2D shooter is to survive the waves of oncoming Jasons for as long as possible while racking up a high score. The player progresses through three different levels but only moves on to another level when they die. Each level is complete with their own weapon, map, and enemies and the player's total score is calculated at the end of all three levels.

## Impediments
Liam: Levels took longer to make than I thought, until I discovered the copy paste function a couple hours before the deadline, when I only had one more level to make.

Wyeth: My first major difficulty was making the character shoot while following the mouse. I was able to have a player shoot in a straight line but struggled to get the player to shoot when my mouse pointed. Another difficulty was figuring out how to rotate the bullets so that they pointed towards my mouse every time they shot. Also, adding a timer to the gun's fire rate took some time to tweak and fully instantiate as it shot the bullets.

Kidd: It was difficult finding certain sound effect. I had one in particular that required many hoops to jump through due to Godot not being able to accept MP files. Another problem that I encountered was the overall confusion that I had with the group workings of Github. I ended up confusing many of my files, which resulted in some time lost. I also overestimated my abilities to compose music quickly and ended up making music that is subpar compared to my true capabilities. 

Alex: had major trouble with getting a enemy spawner to correctly create enemies so we had to hard code them at the end, also had some trouble at the beginning as we had started two seperate godot projects so I had to combine them into one project and change the file paths of several things.

## Implementation
Liam: 3 Levels With Different Themes
Wyeth: Moveable character with different weapon skins and bullets, muzzle flash and impact explosions, beginning and end scenes, score and player health. 
Alex: Enemies and Ai, spawning, proof checking and organization
Christopher: level music and sound effects

Liam Assets:

Top Down TileSet (https://opengameart.org/content/top-down-asset-pack-1-ctatz) by https://twitter.com/CamTatz

Wyeth assets/Sources:

https://opengameart.org/content/top-down-assets - Character model

https://kaylousberg.itch.io/gun-assets?download - Bullets

https://godotengine.org/qa/82059/top-down-camera - Camera

https://www.youtube.com/watch?v=cei9BZMzVLY- Shooting

https://www.youtube.com/watch?v=6_xTDu6yvCY&list=PL3V-_hJz2cV8INa2MH5L89YPNMBDjUEMx&index=4 Health Bar

https://www.youtube.com/watch?v=N6geUSN7aWE&list=PL3V-_hJz2cV8INa2MH5L89YPNMBDjUEMx&index=3 UI

Kidd assets/sources:

https://www.reasonstudios.com/ - Music

https://www.audacityteam.org/ - Sound effects (1)

https://soundbible.com/ - Sound effects (2)

Alex Puckett assets/sources:

https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html - enemy movement

## References
Jason Francis

## Future Development
None

# Created by: We'll be dead by daylight

Wyeth Michaelsen - Character and Weapon Implementation, Start and End Screens

Alex Puckett - Enemy Implementation, Spawning, and Quality Control

Liam O'Brien - Level Design

Christopher Kidd - Music and Sound

