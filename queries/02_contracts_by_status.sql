-- ============================================================
-- Projet personnel — données fictives.
-- Requête 02 — Comptage par groupe (COUNT / GROUP BY)
-- Question métier : comment se répartit le portefeuille
-- entre contrats actifs, terminés et en défaut ?
-- ============================================================

SELECT
    status,
    COUNT(*) AS contract_count
FROM contracts
GROUP BY status
ORDER BY contract_count DESC;
