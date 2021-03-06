CREATE TABLE "ORGANIZATION_ALM_BINDINGS" (
  "UUID" VARCHAR(40) NOT NULL,
  "ORGANIZATION_UUID" VARCHAR(40) NOT NULL,
  "ALM_APP_INSTALL_UUID" VARCHAR(40) NOT NULL,
  "ALM_ID" VARCHAR(40) NOT NULL,
  "URL" VARCHAR(2000) NOT NULL,
  "USER_UUID" VARCHAR(255) NOT NULL,
  "CREATED_AT" BIGINT NOT NULL,
  CONSTRAINT "PK_ORGANIZATION_ALM_BINDINGS" PRIMARY KEY ("UUID")
);
CREATE UNIQUE INDEX "ORG_ALM_BINDINGS_ORG" ON "ORGANIZATION_ALM_BINDINGS" ("ORGANIZATION_UUID");
CREATE UNIQUE INDEX "ORG_ALM_BINDINGS_INSTALL" ON "ORGANIZATION_ALM_BINDINGS" ("ALM_APP_INSTALL_UUID");
