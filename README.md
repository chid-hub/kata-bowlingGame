# BowlingGameKATA

# American Ten-Pin Bowling Game

This Swift project implements a simple scoring system for American Ten-Pin Bowling. The scoring logic follows the rules of the game, including strikes, spares, and open frames.

## How to Use

1. Clone the repository:
2. 
    git clone <repository-url>

3. Open the Xcode project file:
   
    open BowlingGame.xcodeproj

4. Run the project in Xcode.

## Rules of Bowling Scoring

- Each game includes ten frames.
- In each frame, the bowler gets up to two tries to knock down all the pins.
- Scoring includes strikes, spares, and open frames.
- Strikes and spares have bonus points based on the subsequent rolls.

## Example Test Cases

- `X X X X X X X X X X X X` (12 rolls: 12 strikes) = 10 frames * 30 points = 300
- `9- 9- 9- 9- 9- 9- 9- 9- 9- 9-` (20 rolls: 10 pairs of 9 and miss) = 10 frames * 9 points = 90
- `5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5` (21 rolls: 10 pairs of 5 and spare, with a final 5) = 10 frames * 15 points = 150
