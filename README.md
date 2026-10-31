# JobPulse - Crawling & Analytics Pipeline

An end-to-end Data Engineering project that automatically crawls job postings from multiple websites, ingests raw data into PostgreSQL and MinIO, publishes curated job alerts to Discord, and builds a Data Lakehouse using dbt, Trino, and Iceberg.

The entire pipeline is orchestrated with Airflow and Evidence for job searching and current job market analysis.

## Project Objectives

1. Crawl job postings from multiple sources (currently ITViec and TopCV, could extend more sources).
2. Validate data with Great Expectation before storing them.
3. Store raw and processed data in:

    - PostgreSQL (operational layer)
    - MinIO + Iceberg (analytical layer)

4. Automatically publish new job alerts to Discord without duplicates.
5. Transform and model data using dbt.
6. Create semantic model for BI consumption and dashboard for data job market analysis.