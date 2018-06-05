# defense-of-meridor

To-done
=======
* Grey out a troop when it is selected
* Make it so clicking on one troop when another is selected will select the second troop (assuming the currently selected troop cannot heal/unseal tp)
* Desired behavior when running out of moves: Deselect current pet, disable further selection of pets.
* When you click on the battlemap and have no moves left, prompt to end turn
* Selecting a pet after you run out of moves causes pet to remain greyed out. More to the point, clicking on a pet after you run out of moves does not deselect it.
* Make it so troops that were just converted this turn can still move.
* When the game has been won, remove all troop outlines.
* Troop outline colors should also be shown in the troop info screen on the right hand side of the MeriFrame.

To - do
=======
## Troop Selecting / Outlining
* Table creation for UnitDisplay should be cleaned up a lot, should share more code between allies and foes.

## General QoL fixes
* Make it more obvious when no turns remain.
* Add back colors for each rank (Villager, Defender, ...)
* Make the outline around each game tile about a pixel smaller (or alternatively make the black lines between cells a little thicker)
* The "Victory Click the Map to Continue" screen could use a semi-transparent background.
* Allow "click to restart" on game loss, instead of "why not restart from the menu?"

## Battlelog changes
* Add a battlelog message for finding the artifact.
* Change battlelog from textarea to textpane
* Make the combat log more visually obvious (e.g. boldface)

## General Bugs
* There is a missed case if it is possible to both heal TPseal and healseal, so it is not always possible to heal correctly.
* The error text is wrong when trying to select fewer than 5 pets for the next battle.
* Selecting / Unselecting a pet causes the mission info to wiggle back and forth a little bit.
* Selecting a pet technically redraws the grey "selected" overlay box a pixel too large, but it looks fine so I didn't bother to change it.
* Images do not load at all from the jar file, instead they must load from a local folder named "MeriImages"

## Programming QoL fixes
* Better helper functions (e.g. for checking location / equality of pets)
* toString() for MeriPet (and others)
* Remove a whooooole lot of magic numbers and replace with constants.


Dev Documentation
=================

meridor
-------

### BattleMap.java
The 2D array representation of the gameboard. This handles click events, victory conditions, and drawing the board.

### Campaign.java
Contains data about each of the missions in the game, including ally/foe spawn locations, and map generation.

### Equip.java
Wrapper class for holding info about an equipment item.

### MConst.java
Class handling various initializations and constant declarations. Called very early on to load images from files, and similar tasks.

### MeriDriver.java
The entry point for the program. Constructs a MeriFrame to start the game.

### MeriFrame.java
The top level UI element from which all other UI elements descend. This is the core gameplay window.

### MeriPanel.java
A sub-level UI element that exists as a child of the MeriFrame. Haven't gotten around to documenting this super well yet.

### MeriPet.java
A class for defining and handling foe and ally entities on the game board and in the player's lineup.

### MeriTile.java
One of the squares on the 2D gameboard, containing information about what occupies that square (an item, terrain element, village, foe, or ally)


firework
--------
Various victory elements for graphically drawing fireworks after the game is won.
