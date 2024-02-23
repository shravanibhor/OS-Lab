read -p "Enter the basic salary: " basic_salary
read -p "Enter the travel allowance: " travel_allowance

gross_salary=$(echo "scale=2; $basic_salary + $travel_allowance + ($basic_salary * 0.10)" | bc)

echo "The gross salary is: $gross_salary"

