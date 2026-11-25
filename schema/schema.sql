-- ============================================================
-- Projet personnel — données fictives.
-- Schéma bancaire synthétique : clients, contrats, versements, incidents.
-- Dialecte : SQL standard, testé sous SQLite.
-- ============================================================

-- Table des clients de la banque fictive "NovaBank"
CREATE TABLE customers (
    customer_id   INTEGER PRIMARY KEY,
    first_name    TEXT NOT NULL,
    last_name     TEXT NOT NULL,
    signup_date   DATE NOT NULL,
    signup_channel TEXT NOT NULL  -- 'AGENCY', 'WEB', 'MOBILE'
);

-- Table des contrats de financement signés par les clients
CREATE TABLE contracts (
    contract_id   INTEGER PRIMARY KEY,
    customer_id   INTEGER NOT NULL REFERENCES customers(customer_id),
    product_type  TEXT NOT NULL,  -- 'AUTO', 'PERSONAL', 'HOME_EQUIPMENT'
    amount        REAL NOT NULL,  -- montant financé en euros
    status        TEXT NOT NULL,  -- 'ACTIVE', 'COMPLETED', 'DEFAULTED'
    signed_date   DATE NOT NULL
);

-- Table des versements (échéances mensuelles des contrats)
CREATE TABLE payments (
    payment_id    INTEGER PRIMARY KEY,
    contract_id   INTEGER NOT NULL REFERENCES contracts(contract_id),
    due_date      DATE NOT NULL,  -- date d'échéance prévue
    paid_date     DATE,           -- NULL tant que le versement n'est pas payé
    amount        REAL NOT NULL,
    status        TEXT NOT NULL   -- 'PAID', 'PENDING', 'LATE'
);

-- Table des incidents déclarés sur les contrats (support / litiges)
CREATE TABLE incidents (
    incident_id   INTEGER PRIMARY KEY,
    contract_id   INTEGER NOT NULL REFERENCES contracts(contract_id),
    category      TEXT NOT NULL,  -- 'PAYMENT', 'DOCUMENT', 'SIGNATURE', 'OTHER'
    opened_date   DATE NOT NULL,
    resolved_date DATE,           -- NULL tant que l'incident est ouvert
    status        TEXT NOT NULL   -- 'OPEN', 'RESOLVED'
);
