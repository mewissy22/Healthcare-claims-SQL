CREATE TABLE claims (
    claim_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    provider_id INT,
    claim_amount DECIMAL(10, 2),
    claim_date DATE,
    status VARCHAR(20)
);

CREATE TABLE providers (
    provider_id INT PRIMARY KEY,
    provider_name VARCHAR(100),
    active BOOLEAN
);
