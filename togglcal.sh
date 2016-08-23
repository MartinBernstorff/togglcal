today=$(date +"%Y-%m-%d")

curl -v -u 92b2eb6afed51c51d7a6a050ff0e4535:api_token \ -X GET "https://www.toggl.com/api/v8/time_entries?start_date=${today}T00%3A00%3A01%2B02%3A00&end_date=2038-08-17T00%3A00%3A01%2B02%3A00" | jsonv description,start,duration,pid > today.csv
