# duckdb_data_processing_code_along
Live coding with duckdb and pandas and more


## Rollback 

When modifying the database it will create a .wal file (write-ahead-log). If you don't want these changes, then you could kill the duckdb instance 

```bash
# find the PID for your duckdb process
ps -a

# kill it
kill -9 PID

# remove the .wal file
# start a new terminal
```

## DuckDB CLI 

Open up duckdb cli and then you can do these commands 
```bash
.read # to read a file  
```

