CREATE TABLE "ingredients"(
    "id" NUMERIC PRIMARY KEY
    "typical" TEXT,
    "sugar" TEXT,
    "typical_price" NUMERIC,
    "sugar_price" NUMERIC
);

CREATE TABLE "donuts"(
    "id" NUMERIC PRIMARY KEY,
    "name" TEXT,
    "type" TEXT,
    "price" NUMERIC,
    "ingredient_id",
    FOREING KEY ("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orders"(
    "id" NUMERIC PRIMARY KEY,
    "order_number" NUMERIC,
    "donut_id" NUMERIC,
    "customer_id" NUMERIC,
    FOREING KEY ("donut_id") REFERENCES "donuts"("id"),
    FOREING KEY ("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers"(
    "id" NUMERIC PRIMARY KEY,
    "first_name" TEXT,
    "last_name" TEXT,
    "history" TEXT
);
