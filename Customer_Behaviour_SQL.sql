-- 6. Which 5 products have the highest percentage of purchases with discounts applied?
Select item_purchased,
ROUND(100 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS discount_rate
FROM customer 
GROUP BY item_purchased 
ORDER BY discount_rate DESC
LIMIT 5;

--7. Segment Customers Into New , Loyal , and Returning based on their total number of previous purchases,
-- and show the count of each segement 
WITH customer_type as (
SELECT customer_id, previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'NEW'
	WHEN previous_purchases BETWEEN 2 AND 10 THEN 'RETURNING'
	ELSE 'LOYAL'
	END AS customer_segment
FROM customer
)


SELECT customer_segment, COUNT(*) as "Number Of Customers"
FROM customer_type
GROUP BY customer_segment

--8. What are the Top 3 most purchased products within each category?
WITH item_counts as (
SELECT category,
item_purchased,
COUNT(customer_id) as total_orders,
ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) as item_rank
FROM customer
GROUP BY category, item_purchased
)

SELECT item_rank, category, item_purchased, total_orders 
FROM item_counts
WHERE item_rank <= 3;

--9. Are customers who are repeat buyers(more than 5 previous purchases ) also likely to subscribe?
Select subscription_status,
COUNT(customer_id) as repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status

--10. What is the Revenue Contribution of each age group ?
SELECT age_group,
SUM(purchase_amount) as total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue ASC