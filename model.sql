-- tables
-- Table clients
CREATE TABLE clients (
    id int  NOT NULL AUTO_INCREMENT ,
    name int  NOT NULL ,
    contact int  NOT NULL ,
    CONSTRAINT clients_pk PRIMARY KEY (id)
);

-- Table materials
CREATE TABLE materials (
    id int  NOT NULL AUTO_INCREMENT,
    name int  NOT NULL ,
    CONSTRAINT materials_pk PRIMARY KEY (id)
);

CREATE TABLE purchases (
    id int NOT NULL AUTO_INCREMENT,
    cost int NOT NULL,
    count int NOT NULL,
    object_id int NOT NULL,
    material_id int NOT NULL,
    CONSTRAINT purchases_pk PRIMARY KEY (id)
    );
-- Table objects
CREATE TABLE objects (
    id int  NOT NULL AUTO_INCREMENT,
    name varchar(50)  NOT NULL ,
    price decimal(12,2)  NOT NULL ,
    client_id int  NOT NULL ,
    spending decimal(12,2)  NOT NULL ,
    CONSTRAINT objects_pk PRIMARY KEY (id)
);

-- Table objects_relationships
CREATE TABLE objects_relationships (
    id int  NOT NULL AUTO_INCREMENT,
    worker_id int  NOT NULL ,
    prof_id int  NOT NULL ,
    object_id int  NOT NULL ,
    CONSTRAINT objects_relationships_pk PRIMARY KEY (id)
);

-- Table professions
CREATE TABLE professions (
    id int  NOT NULL AUTO_INCREMENT,
    name varchar(35)  NOT NULL ,
    CONSTRAINT professions_pk PRIMARY KEY (id)
);

-- Table salary
CREATE TABLE salary (
    id int  NOT NULL AUTO_INCREMENT,
    object_id int  NOT NULL ,
    worker_id int  NOT NULL ,
    type bool  NOT NULL ,
    salary decimal(8,2)  NOT NULL ,
    CONSTRAINT salary_pk PRIMARY KEY (id)
);

-- Table workers
CREATE TABLE workers (
    id int  NOT NULL AUTO_INCREMENT,
    name varchar(100)  NOT NULL ,
    CONSTRAINT workers_pk PRIMARY KEY (id)
);





-- foreign keys
-- Reference:  materials_objects (table: materials)


ALTER TABLE purchases ADD CONSTRAINT purchases_objects FOREIGN KEY purchases_objects (object_id)
    REFERENCES objects (id);
-- Reference:  objects_clients (table: objects)
ALTER TABLE purchases ADD CONSTRAINT purchases_materials FOREIGN KEY purchases_materials (material_id)
    REFERENCES materials (id);

ALTER TABLE objects ADD CONSTRAINT objects_clients FOREIGN KEY objects_clients (client_id)
    REFERENCES clients (id);
-- Reference:  objects_relationships_objects (table: objects_relationships)


ALTER TABLE objects_relationships ADD CONSTRAINT objects_relationships_objects FOREIGN KEY objects_relationships_objects (object_id)
    REFERENCES objects (id);
-- Reference:  objects_relationships_professions (table: objects_relationships)


ALTER TABLE objects_relationships ADD CONSTRAINT objects_relationships_professions FOREIGN KEY objects_relationships_professions (prof_id)
    REFERENCES professions (id);
-- Reference:  objects_relationships_workers (table: objects_relationships)


ALTER TABLE objects_relationships ADD CONSTRAINT objects_relationships_workers FOREIGN KEY objects_relationships_workers (worker_id)
    REFERENCES workers (id);
-- Reference:  salary_objects (table: salary)


ALTER TABLE salary ADD CONSTRAINT salary_objects FOREIGN KEY salary_objects (object_id)
    REFERENCES objects (id);
-- Reference:  salary_workers (table: salary)


ALTER TABLE salary ADD CONSTRAINT salary_workers FOREIGN KEY salary_workers (worker_id)
    REFERENCES workers (name);



-- End of file.
