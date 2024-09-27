SELECT "first_name", "last_name", AVG("height"), "height"
FROM "players"
WHERE "height" > (SELECT AVG("height") FROM "players")
ORDER BY "height" DESC, "first_name" ASC, "last_name" ASC;
