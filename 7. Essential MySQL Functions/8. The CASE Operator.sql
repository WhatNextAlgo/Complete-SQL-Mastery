USE sql_store;

Select Order_id,
		CASE 
			WHEN Year(Order_date) = Year(Now()) - 3 Then 'Active'
            WHEN Year(Order_date) = Year(Now()) - 4 Then 'Last Year'
            WHEN Year(Order_date) = Year(Now()) - 5 Then 'Archived'
            ELSE 'Future'
		END AS category
FROM Orders;

-- Exercise

Select 
	concat(first_name,' ',last_name),
    points,
    CASE 
		WHEN points > 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
	ELSE 'Bronze'
    END AS Category
FROM Customers
Order By points DESC
