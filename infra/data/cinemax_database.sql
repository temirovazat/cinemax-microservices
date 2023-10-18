-- Connecting to the database
\c cinemax_database

-- Creating a schema for tables
CREATE SCHEMA IF NOT EXISTS content;

-- Setting the default scheme
SET search_path TO content,public; 

-- Creating a table of movies
CREATE TABLE IF NOT EXISTS film_work (
    id uuid PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    creation_date DATE,
    rating FLOAT,
    type TEXT NOT NULL,
    created timestamp with time zone DEFAULT NOW(),
    modified timestamp with time zone DEFAULT NOW()
);

-- Building an index to speed up date search
CREATE INDEX film_work_creation_date_idx ON film_work(creation_date);

-- Creating a person table
CREATE TABLE IF NOT EXISTS person (
    id uuid PRIMARY KEY,
    full_name TEXT NOT NULL,
    created timestamp with time zone DEFAULT NOW(),
    modified timestamp with time zone DEFAULT NOW()
);

-- Creating an intermediate table for movies and personas
CREATE TABLE IF NOT EXISTS person_film_work (
    id uuid PRIMARY KEY,
    film_work_id uuid NOT NULL REFERENCES film_work (id) ON DELETE CASCADE,
    person_id uuid NOT NULL REFERENCES person (id) ON DELETE CASCADE,
    role TEXT NOT NULL,
    created timestamp with time zone DEFAULT NOW()
);

-- Building an index to limit the uniqueness of movies and persons
CREATE UNIQUE INDEX film_work_person_idx ON person_film_work (film_work_id, person_id, role);

-- Creating a table of genres
CREATE TABLE IF NOT EXISTS genre (
    id uuid PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    created timestamp with time zone DEFAULT NOW(),
    modified timestamp with time zone DEFAULT NOW()
);

-- Creating an intermediate table for movies and genres
CREATE TABLE IF NOT EXISTS genre_film_work (
    id uuid PRIMARY KEY,
    film_work_id uuid NOT NULL REFERENCES film_work (id) ON DELETE CASCADE,
    genre_id uuid NOT NULL REFERENCES genre (id) ON DELETE CASCADE,
    created timestamp with time zone DEFAULT NOW()
);

-- Building an index to limit the uniqueness of movies and genres
CREATE UNIQUE INDEX film_work_genre_idx ON genre_film_work (film_work_id, genre_id);