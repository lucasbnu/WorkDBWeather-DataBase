/*
 Navicat Premium Data Transfer

 Source Server         : WorkDB
 Source Server Type    : PostgreSQL
 Source Server Version : 140005
 Source Host           : localhost:5432
 Source Catalog        : WorkDB
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140005
 File Encoding         : 65001

 Date: 29/09/2022 01:35:04
*/


-- ----------------------------
-- Sequence structure for historico_id
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."historico_id";
CREATE SEQUENCE "public"."historico_id" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for historico_pesquisa
-- ----------------------------
DROP TABLE IF EXISTS "public"."historico_pesquisa";
CREATE TABLE "public"."historico_pesquisa" (
  "id_historico" numeric(255) NOT NULL DEFAULT nextval('historico_id'::regclass),
  "cidade" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "data_pesquisa" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of historico_pesquisa
-- ----------------------------
INSERT INTO "public"."historico_pesquisa" VALUES (18, 'Blumenau', '2022-09-29 01:09:34');
INSERT INTO "public"."historico_pesquisa" VALUES (19, 'Blumenau', '2022-09-29 01:23:02');
INSERT INTO "public"."historico_pesquisa" VALUES (20, 'São paulo', '2022-09-29 01:32:59');
INSERT INTO "public"."historico_pesquisa" VALUES (21, 'Joinville', '2022-09-29 01:33:12');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."historico_id"', 22, true);

-- ----------------------------
-- Primary Key structure for table historico_pesquisa
-- ----------------------------
ALTER TABLE "public"."historico_pesquisa" ADD CONSTRAINT "historico_pesquisa_pkey" PRIMARY KEY ("id_historico");
