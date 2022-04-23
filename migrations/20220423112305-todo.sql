-- +migrate Up
CREATE TYPE todo_status as ENUM ('NEW', 'IN_PROGRESS', 'DONE');
CREATE TABLE todo (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    text varchar(255),
    status todo_status default 'NEW'
);

-- +migrate Down
DROP TABLE todo;
DROP TYPE todo_status;
