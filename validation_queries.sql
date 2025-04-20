-- Missing or null values
SELECT * FROM claims
WHERE claim_amount IS NULL OR patient_name IS NULL;

-- Inactive or non-existent providers
SELECT c.* FROM claims c
LEFT JOIN providers p ON c.provider_id = p.provider_id
WHERE p.active = FALSE OR p.provider_id IS NULL;

-- Invalid status
SELECT * FROM claims
WHERE status NOT IN ('Approved', 'Pending', 'Denied');

-- Consolidated report
SELECT claim_id, 'Missing Data' AS issue_type FROM claims
WHERE claim_amount IS NULL OR patient_name IS NULL
UNION
SELECT claim_id, 'Invalid Provider' FROM claims c
LEFT JOIN providers p ON c.provider_id = p.provider_id
WHERE p.provider_id IS NULL OR p.active = FALSE
UNION
SELECT claim_id, 'Bad Status' FROM claims
WHERE status NOT IN ('Approved', 'Pending', 'Denied');
