CREATE TABLE
    IF NOT EXISTS data_jobs AS (
        FROM
            read_csv_auto ('data/ai_job_dataset.csv')
    );