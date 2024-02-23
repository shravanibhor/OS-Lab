read -p "Enter first year" start_year
read -p "Enter second year" end_year
start_timestamp=$(date -d "$start_year-01-01 00:00:00" +%s)
end_timestamp=$(date -d "$end_year-12-31 23:59:59" +%s)


find . -type f -newermt "$start_year-01-01" ! -newermt "$end_year-12-31" -exec ls -l {} +

