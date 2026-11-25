-- ============================================================
-- Projet personnel — données fictives.
-- Requête 04 — Acquisition par canal (COUNT / GROUP BY)
-- Question métier : par quel canal les clients arrivent-ils
-- (agence, web, mobile) ? Sert à suivre la bascule vers
-- les canaux digitaux.
-- ============================================================

SELECT
    signup_channel,
    COUNT(*) AS customer_count
FROM customers
GROUP BY signup_channel
ORDER BY customer_count DESC;
