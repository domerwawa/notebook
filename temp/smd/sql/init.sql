-- Table: "WEATHER_INFO"

-- DROP TABLE "WEATHER_INFO";

CREATE TABLE "WEATHER_INFO"
(
  "CITY" character varying(50) NOT NULL,
  "DATE" date NOT NULL,
  "HIGH_TEMP" int,
  "LOW_TEMP" int,
  CONSTRAINT "WEATHER_INFO_pkey" PRIMARY KEY ("CITY", "DATE")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "WEATHER_INFO"
  OWNER TO adams;


INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-01', 2, 5);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-02', 1, 3);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-03', 0, 4);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-04', -1, 3);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-05', 0, 5);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-06', 1, 5);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-07', 2, 6);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-08', 3, 7);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-09', 4, 8);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('上海','2000-01-10', 5, 9);

INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-01', 1, 5);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-02', 2, 6);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-03', 3, 7);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-04', 4, 8);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-05', 5, 9);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-06', 4, 8);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-07', 3, 7);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-08', 2, 6);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-09', 1, 5);
INSERT INTO "WEATHER_INFO" ("CITY", "DATE", "HIGH_TEMP", "LOW_TEMP") values ('北京','2000-01-10', 0, 4);
