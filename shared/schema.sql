CREATE TABLE "business_accounts" (
  "id" uuid PRIMARY KEY,
  "name" text COLLATE unicode NOT NULL,
  "site_identifier" text NOT NULL UNIQUE
);

CREATE INDEX "business_account_id" ON "business_accounts" USING hash ("id");