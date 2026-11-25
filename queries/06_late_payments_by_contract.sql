-- ============================================================
-- Projet personnel — données fictives.
-- Requête 06 — Jointure + agrégats + filtre sur groupe
-- (JOIN / GROUP BY / HAVING)
-- Question métier : quels contrats cumulent des versements
-- en retard, et pour quel montant total ? C'est la liste de
-- travail d'une équipe de suivi des impayés.
-- ============================================================

SELECT
    p.contract_id,
    COUNT(*)    AS late_payment_count,
    SUM(p.amount) AS total_late_amount
FROM payments AS p
WHERE p.status = 'LATE'
GROUP BY p.contract_id
HAVING COUNT(*) >= 1
ORDER BY total_late_amount DESC;
