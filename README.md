# katas

This repository contains small programming exercises (katas) designed to practice clean code, object-oriented design, and testable architecture.

## 1. Fortune Cookie Generator - Java
Console-based Java program that randomly selects and prints a humorous or thoughtful fortune message.

Encapsulates fortune messages using an enum FortuneMessage.

Retrieves a random message using Math.random().

Outputs the selected message via Fortune#reveal().

### Build & Run

```bash
javac Fortune.java
java Fortune
```

## 2. Ruby – Gilded Rose Kata
A Ruby implementation of the classic Gilded Rose kata. It simulates the daily update of items in an inventory with different rules based on item types.

Separates concerns by introducing an ItemUpdater class instead of cramming all logic into one method.

Encapsulates behavior using small, clearly named private methods (increase_quality, update_backstage_passes, etc.).

Implements quality and sell updates for:

- Regular items

- Aged Brie (improves with time)

- Backstage passes (increase in quality then drop to 0)

- Legendary items (do not change)


### Run & build
```bash
ruby gilded_rose.rb
```

## Ruby - Tennis Game Kata

A Ruby implementation of the Tennis Refactoring Kata, which models the scoring logic of a tennis game between two players. Rather than relying on raw conditionals or switch statements, this version expresses the game's state transitions using a Finite State Machine pattern — each score state is represented as its own class.

Each tennis score is represented as a separate class.

The TennisGame1 class only manages player names and current game state.

All scoring logic is handled internally by the state objects.

Every state returns a new object on transition.

### Build & run

```bash
ruby tennis_game.rb
```
