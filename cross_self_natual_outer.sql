  -- LEFT OUTER JOIN = LEFT JOIN;
    -- RIGHT OUTER JOIN  = RIGHT JOIN;
	-- INNER JOIN = JOIN
    -- FULL OUTER JOIN = FULL JOIN = INNER JOIN	 + ALL REMAINING RECORD FROM LEFT AND ALL RECORDS FROM RIGHT COLOUMN; 
    
    -------------------------------------------------------------------
    -- CROSS JOIN = RETURN THE CARTESIAN PRODUCT OF THE TABLE;
			-- we dont need to write ON clause with CROSS JOIN;
            -- if there are two tables ,1st will 6 rows and 2nd with 4 then CROSS JOIN will return 24 records;
            -- suppose we have to return a emp name and dept name from two diff tables and also have to return a companies name and location (but company detail only contains one rows ), in this case we need cross join

            eg query :
            SELECT e.emp_name, d.dept_name , c.company_name , c.location
            FROM employee e
            INNER JOIN department d ON e.emp_name = d.dept_name
            Cross join customer c;
        ----------------------------------------------------------------    
            
            
	-- NATURAL JOIN = RETURN THE ROWS WHICH ARE NATUARALLY MATCHED BY SQL
			-- we dont need to specify the on clause condition , because in the natual join the cndition is matched naturally by sql;
            -- how it returns the result ?
				-- basically it returns the result if: 1st) there is any same column name present in the both left and right table
											-- What if two tables are not having a single coloumn which shares the same name?
											--	-> then it will return the cartesian product.alter
				-- in simple natural join is a inner join if two columns are sharing the same name from diff table , and if not then it is a cartesian product of the table,
                -- never use natual join as you are giving a full control to SQL;
                
	---------------------------------------------------------------------------------
    
    -- SELF JOIN = USE TO RETURN RECORDS FROM THE TABLE ITSEL(JON THE TABLE WITH ITSELF)
		-- 	we need to specify the alises as we are using same single table in self join eg: table_name as child and table_name as parent
        -- there is no such kw like SELF , we only need to speicfy join kw
        -- sometimes the info is given in the single table , so hence we need SELF JOIN
        
        eg query:
        
        select child.name as child_name , 
        child.age as child_age,
        parent.name as parent_name,
        parent.age as parent_age
        from famlily as child
        join family as parent on child.parent_id = parent.memeber_id;
        
        
        
