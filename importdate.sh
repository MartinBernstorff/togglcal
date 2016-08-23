startdate=2016-08-16
enddate=2016-08-17

#format: yyyy-mm-dd

curl -v -u 92b2eb6afed51c51d7a6a050ff0e4535:api_token \ -X GET "https://www.toggl.com/api/v8/time_entries?start_date=${startdate}T00%3A00%3A01%2B02%3A00&end_date=${enddate}T00%3A00%3A01%2B02%3A00" | jsonv description,start,duration,pid > today.csv
