SELECT COUNT("id"), "city" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING COUNT("id") <= 3
ORDER BY COUNT("id") DESC, "city" ASC
LIMIT 3;
