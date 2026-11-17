/* Query 1
  Find out how many payments are greater than average
    Steps:
        figure out the average of the payments = DONE
        figure out how many of those payments are greater than average
*/

USE if26jacof_sakila;
SELECT COUNT(amount) AS payment_above_avg
FROM payment
where amount > (SELECT AVG(amount) FROM payment);

/*
Query 2.a
    NEEDS:
        - WHERE and IN clauses
        - Display all payments for customers with store_id 2
        - Order by customer_id and payment_date
*/

USE if26jacof_sakila;
SELECT customer_id, payment_date, amount FROM payment
WHERE customer_id IN
    (
        SELECT customer_id
        FROM customer
        WHERE store_id = 2
    )
ORDER BY customer_id, payment_date DESC;
