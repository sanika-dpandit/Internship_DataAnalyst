-- Drop table if exists to start fresh
DROP TABLE IF EXISTS online_sales;

-- Create table
CREATE TABLE online_sales (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);

-- Insert sample data - generate about 50 rows with random dates and amounts
-- Using MySQL variables and loops to generate data

DELIMITER $$

CREATE PROCEDURE populate_online_sales()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 50 DO
        INSERT INTO online_sales (order_date, amount, product_id)
        VALUES (
            DATE_ADD('2023-01-01', INTERVAL FLOOR(RAND()*365) DAY),
            ROUND(RAND()*500 + 10, 2), -- amount between 10 and 510
            FLOOR(RAND()*10) + 1 -- product_id between 1 and 10
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

-- Call the procedure to populate data
CALL populate_online_sales();

-- Drop the procedure if you want clean schema
DROP PROCEDURE populate_online_sales;
