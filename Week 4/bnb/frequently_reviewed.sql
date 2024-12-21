CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", COUNT("reviews"."comments") AS "reviews"
FROM "listings"
JOIN "reviews" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "listings"."id"
ORDER BY "reviews" DESC, "listings"."property_type" ASC, "listings"."host_name" ASC
LIMIT 100;
