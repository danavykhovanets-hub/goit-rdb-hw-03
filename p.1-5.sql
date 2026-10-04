USE shop;

-- 1. SELECT потрібних стовпців

SELECT * FROM products;
SELECT name, phone FROM shippers;


-- 2. Середнє, максимум, мінімум ціни

SELECT
  AVG(price) AS avg_price,
  MAX(price) AS max_price,
  MIN(price) AS min_price
FROM products;


-- 3. Унікальні пари (category_id, price), спадання по price, 10 рядків

SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;


-- 4. Кількість продуктів у ціні 20–100

SELECT COUNT(*) AS products_20_100
FROM products
WHERE price BETWEEN 20 AND 100;


-- 5. Кількість товарів і середня ціна у кожного постачальника

SELECT
  supplier_id,
  COUNT(*)   AS products_count,
  AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;