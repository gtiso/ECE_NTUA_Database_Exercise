CREATE DATABASE IF NOT EXISTS MASTERCHEF;
USE MASTERCHEF;

CREATE TABLE Cuisines (
  cuisine_id INTEGER PRIMARY KEY,
  cuisine_name VARCHAR(20)
);

CREATE TABLE Recipes (
    recipe_id INTEGER PRIMARY KEY,
    cuisine_id INTEGER,
    type VARCHAR(10) CHECK (type IN ('BAKING', 'COOKING')),
    difficulty INTEGER CHECK (difficulty BETWEEN 1 AND 5),
    name VARCHAR(100),
    description VARCHAR(255),
    meal VARCHAR(20) CHECK (meal IN ('BREAKFAST', 'LUNCH', 'EVENING MEAL', 'DINNER', 'SNACK')),
    total_time INTEGER,
    servings INTEGER,
    calories_per_serving INTEGER,
    recipe_classification VARCHAR(50),
    FOREIGN KEY (cuisine_id) REFERENCES Cuisines(cuisine_id)
);