INSERT INTO providers VALUES
(1, 'HealthFirst', TRUE),
(2, 'MedCare', TRUE),
(3, 'WellnessOne', FALSE);

INSERT INTO claims VALUES
(101, 'John Doe', 1, 1200.00, '2024-11-01', 'Approved'),
(102, 'Jane Smith', 2, NULL, '2024-11-02', 'Pending'),
(103, NULL, 5, 900.00, '2024-11-03', 'Error'),
(104, 'Alice', 1, 700.00, '2024-13-01', 'Approved');
