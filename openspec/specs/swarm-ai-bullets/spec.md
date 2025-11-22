# swarm-ai-bullets Specification

## Purpose
TBD - created by archiving change add-bullet-shooting. Update Purpose after archive.
## Requirements
### Requirement: Player Bullet Shooting
The player ship SHALL be able to shoot bullets in the direction it is facing when the player activates the shooting input.

#### Scenario: Successful bullet firing
- **WHEN** player presses the shoot input (space key or touch)
- **THEN** a bullet spawns at the player's position
- **AND** the bullet moves forward in the direction the player is facing
- **AND** the shooting action respects a cooldown period to prevent rapid fire

#### Scenario: Bullet movement
- **WHEN** a bullet is spawned
- **THEN** it moves continuously forward at a constant speed
- **AND** the bullet is automatically deleted when it moves off-screen

### Requirement: Bullet-Enemy Collision
Bullets SHALL detect collision with enemy ships and trigger enemy destruction upon impact.

#### Scenario: Bullet hits enemy
- **WHEN** a bullet collides with an enemy ship
- **THEN** the bullet is deleted
- **AND** the enemy ship is destroyed or damaged
- **AND** appropriate visual/audio feedback is provided

#### Scenario: Bullet misses target
- **WHEN** a bullet travels off-screen without hitting any target
- **THEN** the bullet is automatically deleted to free resources

### Requirement: Bullet Asset Integration
The bullet sprite SHALL be properly integrated into the game atlas and rendered as a visual projectile.

#### Scenario: Bullet rendering
- **WHEN** a bullet is spawned
- **THEN** it displays the laserBlue01.png image
- **AND** the bullet is scaled appropriately relative to the player and enemy ships
- **AND** the bullet faces the correct direction based on movement

