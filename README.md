# Radial Dungeon Generator
[![Godot 4.2.1](https://img.shields.io/badge/Godot-4.2.1-478CBF?style=flat&logo=godot%20engine&logoColor=white)](https://godotengine.org)

This project includes both the functionality as well as a sample implementation scene demonstrated in the `samples/` folder. Simply launch the `EXAMPLE_GAME` scene to test. `WASD` moves the "player" square around, `=` and `-` zoom the camera in and out.

The project features setting a variety of "tiles" from a random set at different radial distances from a center point in a predefined, square grid, and will also place predetermined "points of interest" at a random place a certain radial distance away from the center point.
The tiles can be of any size, as long as the tile size (set on the grid) is the same size as the godot unit size of the tile scenes provided in the generators.
