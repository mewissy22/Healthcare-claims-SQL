# Healthcare Claims File Validation (SQL Project)

This project simulates a real-world healthcare claims file validation workflow using SQL. It mirrors the type of backend validation you'd perform when supporting payment processing systems.

## Features
- Detects missing or malformed claim data
- Validates claim providers
- Identifies invalid claim statuses

## Technologies Used
- SQL (MySQL or PostgreSQL)
- Optional: Shell scripting for data ingestion simulation

## Files
- `schema.sql`: Table definitions
- `data.sql`: Sample data with valid and invalid records
- `validation_queries.sql`: Queries to detect and report issues
- `validation_report_example.md`: Sample output/report from validation

## Sample Validation Report

| claim_id | issue_type       |
|----------|------------------|
| 102      | Missing Data     |
| 103      | Missing Data     |
| 103      | Invalid Provider |
| 103      | Bad Status       |
| 104      | Bad Status       |
