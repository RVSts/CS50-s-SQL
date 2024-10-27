CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", COUNT("availabilities"."date") AS "days_vacant"
FROM "listings"
JOIN "availabilities" ON "availabilities"."id" = "listings"."id"
WHERE "available" = 'TRUE';