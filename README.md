# Ruby-Memory-Match

## Summary
A simple CLI game built entirely in Ruby and fully tested with Rspec.  The objective is to find all matching card pairs.  
Game ends when all cards are flipped over!

## Getting Started
1.  Clone this repository:

  `$ git clone https://github.com/ljr5102/Ruby-Memory-Match.git`

2.  Navigate to the project directory.

  `$ cd Ruby-Memory-Match`

3.  Execute the Game file.

  `$ ruby lib/game.rb`

## How to Play
After the game begins you will enter 4 numbers (1 at a time) corresponding to
different positions on the grid.  For example, if you wanted to check the top left position and the one to its immediate right,
you would enter the following:<br>
`0`<br>
`0`<br>
`0`<br>
`1`<br>
This would flip the cards at spots [0, 0] and [0, 1].  If those spots match they will remain turned over.  If they do not, they will
be flipped back over and the game continues.

## Technical Details
- Built completely TDD with Rspec.
- Object Oriented design with Ruby.

## Todo
  - [ ] Implement error handling for invalid input.
  - [ ] Incorporate in game instructions for improved UX.
  - [ ] Allow user to choose easy, medium, or hard at start of game.
