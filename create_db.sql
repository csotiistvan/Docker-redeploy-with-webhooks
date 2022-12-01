CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table if not exists app_user(
email VARCHAR (50) not null PRIMARY KEY,
password VARCHAR (60) not null
);

create table if not exists image(
id uuid DEFAULT uuid_generate_v4 () primary KEY,
title VARCHAR (50) not null UNIQUE,
owner VARCHAR (50) not NULL,
description VARCHAR (250),
content BYTEA not NULL,
"extension" VARCHAR (4) not null,
CONSTRAINT fk_app_user
      FOREIGN KEY(owner)
	  REFERENCES app_user(email)
);
