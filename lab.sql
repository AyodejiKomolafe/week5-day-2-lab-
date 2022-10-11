CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255)
  password VARCHAR(255)
);

CREATE TABLE recipes(
  recipe_id SERIAL PRIMARY KEY,
  recipe_name VARCHAR(255),
  recipe_type VARCHAR(255),
  user_id int REFERENCES users(user_id)
);

CREATE TABLE ingredients(
  ingredients_id SERIAL PRIMARY KEY,
  ingredients_text VARCHAR(500),
  recipe_id int REFERENCES recipes(recipe_id)
);

CREATE TABLE instructions(
  instructions_id SERIAL PRIMARY KEY,
  instructions_text VARCHAR(500),
  recipe_id int REFERENCES recipes(recipe_id)
);

CREATE TABLE grocery_list(
  grocery_list_id SERIAL PRIMARY KEY,
  grocery_list_items VARCHAR(500),
  user_id int REFERENCES users(user_id),
  recipe_id int REFERENCES recipes(recipe_id)
);

CREATE TABLE occasions(
  occasions_id SERIAL PRIMARY KEY,
  occasions_name VARCHAR(500),
  occasions_text VARCHAR(700),
  user_id int REFERENCES users(user_id),
  recipe_id int REFERENCES recipes(recipe_id)
);