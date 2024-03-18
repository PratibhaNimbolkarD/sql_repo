USE ecommerce;
--created table product_details

CREATE TABLE product_details(sell_date DATE,
product VARCHAR(50));


INSERT INTO product_details(sell_date , product) VALUES ('2020-05-30', 'Headphones'), 
('2020-06-01','Pencil'), 
('2020-06-02','Mask'), 
('2020-05-30','Basketball'), 
('2020-06-01','Book'), 
('2020-06-02', ' Mask '), 
('2020-05-30','T-Shirt') ;


select * from product_details;

SELECT
    sell_date AS sale_date,
    COUNT(DISTINCT product) AS num_sold,
    STRING_AGG(product, ',')AS Product
FROM
   product_details
GROUP BY
    sell_date ORDER BY num_sold;