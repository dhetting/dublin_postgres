-- Create schema
CREATE SCHEMA "dublin" AUTHORIZATION "postgres";

-- Create record table
CREATE TABLE "dublin"."record" (
	  "gid"         SERIAL NOT NULL PRIMARY KEY
	, "contributer" TEXT NOT NULL
	, "coverage"    TEXT NOT NULL
	, "creator"     TEXT NOT NULL
	, "date"        DATE NOT NULL
	, "description" TEXT NOT NULL
	, "format"      TEXT NOT NULL
	, "identifier"  TEXT NOT NULL
	, "language"    TEXT NOT NULL
	, "publisher"   TEXT NOT NULL
	, "relation"    TEXT NOT NULL
	, "rights"      TEXT NOT NULL
	, "source"      TEXT NOT NULL
	, "subject"     TEXT NOT NULL
	, "title"       TEXT NOT NULL
	, "type"        TEXT NOT NULL
) WITH (OIDS=FALSE)
;

-- Add comments
COMMENT ON TABLE "dublin"."record"                IS 'Metadata record table conforming to the Dublin Core metadata standard.';
COMMENT ON COLUMN "dublin"."record"."gid"         IS 'Primary Key';
COMMENT ON COLUMN "dublin"."record"."contributer" IS 'An entity responsible for making contributions to the resource.';
COMMENT ON COLUMN "dublin"."record"."coverage"    IS 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.';
COMMENT ON COLUMN "dublin"."record"."creator"     IS 'An entity primarily responsible for making the resource.';
COMMENT ON COLUMN "dublin"."record"."date"        IS 'A point or period of time associated with an event in the lifecycle of the resource.';
COMMENT ON COLUMN "dublin"."record"."description" IS 'An account of the resource.';
COMMENT ON COLUMN "dublin"."record"."format"      IS 'The file format, physical medium, or dimensions of the resource.';
COMMENT ON COLUMN "dublin"."record"."identifier"  IS 'An unambiguous reference to the resource within a given context.';
COMMENT ON COLUMN "dublin"."record"."language"    IS 'A language of the resource.';
COMMENT ON COLUMN "dublin"."record"."publisher"   IS 'An entity responsible for making the resource available.';
COMMENT ON COLUMN "dublin"."record"."relation"    IS 'A related resource.';
COMMENT ON COLUMN "dublin"."record"."rights"      IS 'Information about rights held in and over the resource.';
COMMENT ON COLUMN "dublin"."record"."source"      IS 'A related resource from which the described resource is derived.';
COMMENT ON COLUMN "dublin"."record"."subject"     IS 'The topic of the resource.';
COMMENT ON COLUMN "dublin"."record"."title"       IS 'A name given to the resource.';
COMMENT ON COLUMN "dublin"."record"."type"        IS 'The nature or genre of the resource.';

-- Create indices
CREATE INDEX "idx_record_contributer_btree" ON "dublin"."record" USING BTREE("contributer");
CREATE INDEX "idx_record_coverage_btree"    ON "dublin"."record" USING BTREE("coverage");
CREATE INDEX "idx_record_creator_btree"     ON "dublin"."record" USING BTREE("creator");
CREATE INDEX "idx_record_date_btree"        ON "dublin"."record" USING BTREE("date");
CREATE INDEX "idx_record_description_btree" ON "dublin"."record" USING BTREE("description");
CREATE INDEX "idx_record_format_btree"      ON "dublin"."record" USING BTREE("format");
CREATE INDEX "idx_record_identifier_btree"  ON "dublin"."record" USING BTREE("identifier");
CREATE INDEX "idx_record_language_btree"    ON "dublin"."record" USING BTREE("language");
CREATE INDEX "idx_record_publisher_btree"   ON "dublin"."record" USING BTREE("publisher");
CREATE INDEX "idx_record_relation_btree"    ON "dublin"."record" USING BTREE("relation");
CREATE INDEX "idx_record_rights_btree"      ON "dublin"."record" USING BTREE("rights");
CREATE INDEX "idx_record_source_btree"      ON "dublin"."record" USING BTREE("source");
CREATE INDEX "idx_record_subject_btree"     ON "dublin"."record" USING BTREE("subject");
CREATE INDEX "idx_record_title_btree"       ON "dublin"."record" USING BTREE("title");
CREATE INDEX "idx_record_type_btree"        ON "dublin"."record" USING BTREE("type");

-- Drop statements
-- DROP SCHEMA IF EXISTS "dublin";
-- DROP TABLE IF EXISTS "dublin"."record";
-- DROP INDEX IF EXISTS "idx_record_contributer_btree";
-- DROP INDEX IF EXISTS "idx_record_coverage_btree";
-- DROP INDEX IF EXISTS "idx_record_creator_btree";
-- DROP INDEX IF EXISTS "idx_record_date_btree";
-- DROP INDEX IF EXISTS "idx_record_description_btree";
-- DROP INDEX IF EXISTS "idx_record_format_btree";
-- DROP INDEX IF EXISTS "idx_record_identifier_btree";
-- DROP INDEX IF EXISTS "idx_record_language_btree";
-- DROP INDEX IF EXISTS "idx_record_publisher_btree";
-- DROP INDEX IF EXISTS "idx_record_relation_btree";
-- DROP INDEX IF EXISTS "idx_record_rights_btree";
-- DROP INDEX IF EXISTS "idx_record_source_btree";
-- DROP INDEX IF EXISTS "idx_record_subject_btree";
-- DROP INDEX IF EXISTS "idx_record_title_btree";
-- DROP INDEX IF EXISTS "idx_record_type_btree";

