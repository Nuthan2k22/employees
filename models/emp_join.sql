/* with employees as (

    select
        Employee_Id,
		First_Name,
		Last_Name,
		Salary
    from employees.public.employees),

departments as (
    select
        Department_name,
		Manager_id,
		Location_id
    from mployees.public.departments),

Jobs as (

    select
        job_title,
		min_salary,
		max_salary
    from employees.public.jobs),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        coalesce(customer_orders.number_of_orders, 0) as number_of_orders

    from customers

    left join customer_orders using (customer_id)

) */ 



Select 
Employee_Id,
First_Name,
Last_Name,
Salary,
Department_Name,
Employees.Manager_Id,
Location_Id,
Job_Title,
Min_Salary,
Max_Salary
from
employees.public.employees,
employees.public.departments,
employees.public.jobs
Where
employees.department_id = departments.department_id
And
employees.job_id = jobs.job_id