-- ============================================================
-- Projet personnel — données fictives.
-- Requête 01 — Sélection et filtres (SELECT / WHERE / ORDER BY)
-- Question métier : quels sont les contrats encore actifs,
-- signés en 2026, du plus gros montant au plus petit ?
-- C'est la première extraction qu'un analyste produit pour
-- une revue de portefeuille.
-- ============================================================

SELECT
    contract_id,
    customer_id,
    product_type,
    amount,
    signed_date
FROM contracts
WHERE status = 'ACTIVE'
  AND signed_date >= '2026-01-01'
ORDER BY amount DESC;
