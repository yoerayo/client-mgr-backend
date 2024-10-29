-- name: GetBusinessAccount :one
SELECT * FROM "business_accounts" where "id" = $1 LIMIT 1;

-- name: ListBusinessAccounts :many
SELECT * FROM "business_accounts" ORDER BY "name" LIMIT $1 OFFSET $2;

-- name: CreateBusinessAccount :exec
INSERT INTO "business_accounts" ("name", "site_identifier") VALUES ($1, $2) RETURNING "id";