-- ============================================================
-- Projet personnel — données 100 % fictives.
-- Jeu de données synthétique, volumes modestes et lisibles :
-- 12 clients, 15 contrats, 30 versements, 8 incidents.
-- À exécuter après schema/schema.sql.
-- ============================================================

INSERT INTO customers (customer_id, first_name, last_name, signup_date, signup_channel) VALUES
(1,  'Claire',  'Exemple',  '2025-11-03', 'WEB'),
(2,  'Karim',   'Demo',     '2025-11-18', 'AGENCY'),
(3,  'Sofia',   'Test',     '2025-12-02', 'MOBILE'),
(4,  'Lucas',   'Fictif',   '2025-12-15', 'WEB'),
(5,  'Emma',    'Modele',   '2026-01-06', 'AGENCY'),
(6,  'Noah',    'Echantillon', '2026-01-20', 'MOBILE'),
(7,  'Lea',     'Specimen', '2026-02-02', 'WEB'),
(8,  'Hugo',    'Illustration', '2026-02-14', 'AGENCY'),
(9,  'Chloe',   'Prototype', '2026-02-27', 'MOBILE'),
(10, 'Louis',   'Synthese', '2026-03-05', 'WEB'),
(11, 'Mia',     'Factice',  '2026-03-12', 'AGENCY'),
(12, 'Jules',   'Simule',   '2026-03-19', 'MOBILE');

INSERT INTO contracts (contract_id, customer_id, product_type, amount, status, signed_date) VALUES
(101, 1,  'AUTO',           18500.00, 'ACTIVE',    '2025-11-10'),
(102, 2,  'PERSONAL',        6000.00, 'ACTIVE',    '2025-11-25'),
(103, 3,  'HOME_EQUIPMENT',  2400.00, 'COMPLETED', '2025-12-09'),
(104, 4,  'AUTO',           22900.00, 'ACTIVE',    '2025-12-22'),
(105, 5,  'PERSONAL',        9500.00, 'ACTIVE',    '2026-01-13'),
(106, 6,  'AUTO',           15750.00, 'DEFAULTED', '2026-01-27'),
(107, 7,  'HOME_EQUIPMENT',  3100.00, 'ACTIVE',    '2026-02-09'),
(108, 8,  'PERSONAL',       12000.00, 'ACTIVE',    '2026-02-21'),
(109, 9,  'AUTO',           27400.00, 'ACTIVE',    '2026-03-03'),
(110, 10, 'HOME_EQUIPMENT',  1850.00, 'COMPLETED', '2026-03-10'),
(111, 11, 'AUTO',           19990.00, 'ACTIVE',    '2026-03-17'),
(112, 12, 'PERSONAL',        4500.00, 'ACTIVE',    '2026-03-24'),
(113, 1,  'HOME_EQUIPMENT',  2750.00, 'ACTIVE',    '2026-03-28'),
(114, 3,  'AUTO',           21300.00, 'ACTIVE',    '2026-04-02'),
(115, 7,  'PERSONAL',        7800.00, 'COMPLETED', '2026-04-08');

INSERT INTO payments (payment_id, contract_id, due_date, paid_date, amount, status) VALUES
(1,  101, '2025-12-10', '2025-12-10', 385.00, 'PAID'),
(2,  101, '2026-01-10', '2026-01-11', 385.00, 'PAID'),
(3,  101, '2026-02-10', NULL,         385.00, 'LATE'),
(4,  102, '2025-12-25', '2025-12-24', 167.00, 'PAID'),
(5,  102, '2026-01-25', '2026-01-25', 167.00, 'PAID'),
(6,  103, '2026-01-09', '2026-01-09', 200.00, 'PAID'),
(7,  103, '2026-02-09', '2026-02-08', 200.00, 'PAID'),
(8,  104, '2026-01-22', '2026-01-22', 477.00, 'PAID'),
(9,  104, '2026-02-22', NULL,         477.00, 'LATE'),
(10, 104, '2026-03-22', NULL,         477.00, 'PENDING'),
(11, 105, '2026-02-13', '2026-02-13', 264.00, 'PAID'),
(12, 105, '2026-03-13', '2026-03-15', 264.00, 'PAID'),
(13, 106, '2026-02-27', NULL,         328.00, 'LATE'),
(14, 106, '2026-03-27', NULL,         328.00, 'LATE'),
(15, 107, '2026-03-09', '2026-03-09', 129.00, 'PAID'),
(16, 107, '2026-04-09', NULL,         129.00, 'PENDING'),
(17, 108, '2026-03-21', '2026-03-21', 333.00, 'PAID'),
(18, 109, '2026-04-03', NULL,         571.00, 'PENDING'),
(19, 110, '2026-04-10', '2026-04-10', 154.00, 'PAID'),
(20, 111, '2026-04-17', NULL,         416.00, 'PENDING'),
(21, 112, '2026-04-24', NULL,         125.00, 'PENDING'),
(22, 113, '2026-04-28', NULL,         115.00, 'PENDING'),
(23, 101, '2026-03-10', '2026-03-12', 385.00, 'PAID'),
(24, 102, '2026-02-25', '2026-02-25', 167.00, 'PAID'),
(25, 105, '2026-04-13', NULL,         264.00, 'PENDING'),
(26, 108, '2026-04-21', NULL,         333.00, 'PENDING'),
(27, 109, '2026-05-03', NULL,         571.00, 'PENDING'),
(28, 103, '2026-03-09', '2026-03-09', 200.00, 'PAID'),
(29, 106, '2026-04-27', NULL,         328.00, 'PENDING'),
(30, 104, '2026-04-22', NULL,         477.00, 'PENDING');

INSERT INTO incidents (incident_id, contract_id, category, opened_date, resolved_date, status) VALUES
(1, 101, 'SIGNATURE', '2025-11-10', '2025-11-12', 'RESOLVED'),
(2, 104, 'PAYMENT',   '2026-02-23', NULL,         'OPEN'),
(3, 106, 'PAYMENT',   '2026-03-02', NULL,         'OPEN'),
(4, 106, 'DOCUMENT',  '2026-02-05', '2026-02-09', 'RESOLVED'),
(5, 107, 'SIGNATURE', '2026-02-09', '2026-02-10', 'RESOLVED'),
(6, 109, 'DOCUMENT',  '2026-03-03', '2026-03-06', 'RESOLVED'),
(7, 112, 'OTHER',     '2026-04-25', NULL,         'OPEN'),
(8, 103, 'PAYMENT',   '2026-02-10', '2026-02-15', 'RESOLVED');
