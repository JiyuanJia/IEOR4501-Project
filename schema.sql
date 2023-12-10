{\rtf1\ansi\ansicpg936\cocoartf2758
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE complaints \
(\
    unique_key SERIAL PRIMARY KEY,\
    created_date TIMESTAMP WITHOUT TIME ZONE,\
    location_type TEXT,\
    incident_zip INTEGER,\
    geom GEOMETRY(Point, 4326)\
);\
\
CREATE TABLE tree\
(\
    created_date TIMESTAMP WITHOUT TIME ZONE,\
    tree_id integer PRIMARY KEY,\
    status varchar(50),\
    health varchar(50),\
    problems text,\
    zipcode varchar(10),\
    state varchar(10),\
    geom GEOMETRY(Point, 4326)\
);\
\
CREATE TABLE rent\
(\
    RegionID integer PRIMARY KEY,\
    RegionName	varchar(100),\
    date TIMESTAMP WITHOUT TIME ZONE,\
    rent float,\
    geom GEOMETRY(Point, 4326)\
);\
\
CREATE Table zip_code\
(\
    ZIPCODE varchar(50) PRIMARY KEY,\
    PO_NAME varchar(50),\
    POPULATION varchar(50),\
    STATE varchar(50),\
    COUNTY  varchar(50),\
    geom GEOMETRY(Point, 4326)\
);}