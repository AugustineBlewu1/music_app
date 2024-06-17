CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    user_id INTEGER REFERENCES "users" (id)
);

ALTER TABLE "users" ADD COLUMN country VARCHAR(255);
