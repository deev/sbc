CREATE TABLE "restcomm_accounts" (
"sid" VARCHAR(34) NOT NULL PRIMARY KEY,
"date_created" DATETIME NOT NULL,
"date_updated" DATETIME NOT NULL,
"email_address" LONGVARCHAR NOT NULL,
"friendly_name" VARCHAR(64) NOT NULL,
"account_sid" VARCHAR(34),
"type" VARCHAR(8) NOT NULL,
"status" VARCHAR(16) NOT NULL,
"auth_token" VARCHAR(32) NOT NULL,
"role" VARCHAR(64) NOT NULL,
"uri" LONGVARCHAR NOT NULL
);


CREATE TABLE "restcomm_http_cookies" (
"sid" VARCHAR(34) NOT NULL PRIMARY KEY,
"comment" LONGVARCHAR,
"domain" LONGVARCHAR,
"expiration_date" DATETIME,
"name" LONGVARCHAR NOT NULL,
"path" LONGVARCHAR,
"value" LONGVARCHAR,
"version" INT
);

CREATE TABLE "restcomm_blacklist" (
  "sid" varchar(34) NOT NULL PRIMARY KEY,
  "ip_address" varchar(15) NOT NULL,
  "date_created" datetime NOT NULL,
  "account_sid" varchar(34) NOT NULL,
  "date_expires" datetime NOT NULL,
  "reason" varchar(15) NOT NULL,
  "monitor_action" varchar(15) NOT NULL
);


CREATE TABLE "restcomm_whitelist" (
  "sid" varchar(34) NOT NULL PRIMARY KEY,
  "ip_address" varchar(15) NOT NULL,
  "date_created" datetime NOT NULL,
  "account_sid" varchar(34) NOT NULL,
  "date_expires" datetime NOT NULL,
  "reason" varchar(15) NOT NULL,
  "monitor_action" varchar(15) NOT NULL
);

CREATE TABLE "restcomm_network_points" (
	"id" VARCHAR(15) NOT NULL PRIMARY KEY,
	"account_sid" VARCHAR(34) NOT NULL,
	"tag" VARCHAR(15) NOT NULL

);

CREATE TABLE "restcomm_connectors" (
    "sid" VARCHAR(34) NOT NULL PRIMARY KEY,
    "account_sid" VARCHAR(34) NOT NULL,
	"port" SMALLINT(6) NOT NULL,
	"transport" VARCHAR(5) NOT NULL,
	"state" VARCHAR(5) NOT NULL,
	"n_point" VARCHAR(15) NOT NULL
	
);

CREATE TABLE "restcomm_routes" (
	"sid" VARCHAR(34) NOT NULL PRIMARY KEY,
	"account_sid" VARCHAR(34) NOT NULL,
	"source_connector_sid" VARCHAR(34) NOT NULL,
	"target_connector_sid" VARCHAR(34) NOT NULL
);

CREATE TABLE "restcomm_statistics" (
	"sid" VARCHAR(34) NOT NULL PRIMARY KEY,
	"mem_usage" INT NOT NULL,
	"cpu_usage" INT NOT NULL,
	"live_call_count" INT NOT NULL,
	"rejected_count" INT NOT NULL,
	"threat_count" INT NOT NULL,
	"call_rate" DOUBLE NOT NULL,
	"date_created" datetime NOT NULL	
);

CREATE TABLE "restcomm_call_detail_records" (
"sid" VARCHAR(34) NOT NULL PRIMARY KEY,
"parent_call_sid" VARCHAR(34),
"date_created" DATETIME NOT NULL,
"date_updated" DATETIME NOT NULL,
"sender" VARCHAR(15) NOT NULL,
"recipient" VARCHAR(64) NOT NULL,
"status" VARCHAR(20) NOT NULL,
"start_time" DATETIME,
"end_time" DATETIME,
"duration" INT,
"price" VARCHAR(8),
"direction" VARCHAR(20) NOT NULL,
"answered_by" VARCHAR(64),
"api_version" VARCHAR(10) NOT NULL,
"forwarded_from" VARCHAR(15),
"caller_name" VARCHAR(30),
"uri" LONGVARCHAR NOT NULL,
"ring_duration" INT,
"muted" BOOLEAN, 
"on_hold" BOOLEAN
);


CREATE TABLE "update_scripts" (
"script" VARCHAR(255) NOT NULL,
"date_executed" DATETIME NOT NULL
);
