-- Question 1: Show the total payment amount for each payment date, 
-- sorted by payment date in descending order, and show only the top 5 latest payment dates.
SELECT 
    payment_date, 
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    payment_date
ORDER BY 
    payment_date DESC
LIMIT 5;


-- Question 2: Find the average credit limit of each customer, 
-- display customer name, country, and average credit limit, grouped by customer name and country.

SELECT 
    customer_name, 
    country, 
    AVG(credit_limit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customer_name, 
    country;


-- Question 3: Find the total price of products ordered, 
-- display product code, quantity ordered, and total price for each product.
SELECT 
    product_code, 
    quantity_ordered, 
    SUM(quantity_ordered * price_each) AS total_price
FROM 
    orderdetails
GROUP BY 
    product_code, 
    quantity_ordered;


-- Question 4: Find the highest payment amount for each check number, 
-- display check number and the highest amount paid for that check number, grouped by check number.
SELECT 
    check_number, 
    MAX(amount) AS highest_payment_amount
FROM 
    payments
GROUP BY 
    check_number;
