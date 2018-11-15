## Tic-tac-toe
Using Ruby or JavaScript you will need to create a slightly simplified nxn tic-tac-toe game.

Your initial 'board' is a grid of nxn squares. As game play progresses,
each square can get filled by an 'X', 'O', or remain empty - just like normal
tic-tac-toe. The game is won with three in a row of 'X' or 'O' in any
direction, _not_ including diagonals (that's the simplification).

You will have one class/object a 'board', through which the players will
play. Here's your starting point (in JavaScript):

```
var Board = function(side_length) {
  // do initialization here...
};

Board.prototype.square_is = function(row, col, X_or_O) {
  // do stuff...
};

Board.prototype.winner = function() {
  // returns either 'X', 'O', or null
};
```

Here's an example of how the board would be used to play through a game (in Ruby):
```
def playgame

  - board = Board.new(3)

  - board.square_is(1, 1, 'X')
  - board.square_is(1, 0, 'O')
  - board.square_is(0, 1, 'X')
  - board.square_is(2, 1, 'O')
  - board.square_is(0, 2, 'X')
  - board.square_is(2, 0, 'O')

  - check for a winner - won't find one.

  - board.square_is(0, 0, 'X')

  -  check for a winner - X has won.

end
```

Your priority is code clarity and maintainability.

Bonus points: hook this up to a simple UI in a web page!

Zip all your files together for submission
