CREATE TABLE complaints 
(
    unique_key SERIAL PRIMARY KEY,
    created_date TIMESTAMP WITHOUT TIME ZONE,
    location_type TEXT,
    incident_zip INTEGER,
    geom GEOMETRY(Point, 4326)
);

CREATE TABLE tree
(
    created_date TIMESTAMP WITHOUT TIME ZONE,
    tree_id INTEGER PRIMARY KEY,
    status VARCHAR(50),
    health VARCHAR(50),
    problems TEXT,
    zipcode VARCHAR(10),
    state VARCHAR(10),
    geom GEOMETRY(Point, 4326)
);

CREATE TABLE rent
(
    RegionID INTEGER PRIMARY KEY,
    RegionName VARCHAR(100),
    date TIMESTAMP WITHOUT TIME ZONE,
    rent FLOAT,
    geom GEOMETRY(Point, 4326)
);

CREATE Table zip_code
(
    ZIPCODE VARCHAR(50) PRIMARY KEY,
    PO_NAME VAHRCHAR(50),
    POPULATION VARCHAR(50),
    STATE VARCHAR(50),
    COUNTY  VARCHAR(50),
    geom GEOMETRY(Point, 4326)
);