-- ============================================================
-- Projet personnel — données fictives.
-- Requête 03 — Agrégats par produit (SUM / AVG / COUNT / GROUP BY)
-- Question métier : quel produit finance les montants les
-- plus élevés en moyenne, et quel est le volume total engagé
-- par type de produit ?
-- ============================================================

SELECT
    product_type,
    COUNT(*)        AS contract_count,
    SUM(amount)     AS total_amount,
    ROUND(AVG(amount), 2) AS average_amount
FROM contracts
GROUP BY product_type
ORDER BY total_amount DESC;
