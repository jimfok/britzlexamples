# Change: Add Bullet Shooting to Swarm AI Example

## Why
Enhance the swarm AI example to include interactive gameplay by allowing the player ship to shoot bullets at enemies, making it a more complete demonstration of Defold's capabilities including factory creation, collision detection, and object lifecycle management.

## What Changes
- Add bullet shooting functionality to the player ship
- Create bullet.go game object with collision detection
- Update game.atlas to include laserBlue01.png bullet image
- Implement bullet spawning, movement, and cleanup
- Add collision handling between bullets and enemies

## Impact
- Affected specs: N/A (new capability for existing example)
- Affected code: 
  - swarm_ai/player.script (add shooting logic)
  - swarm_ai/game.atlas (add bullet image)
  - New: swarm_ai/bullet.go
  - New: swarm_ai/bullet.script
  - swarm_ai/game.collection (add bullet factory)