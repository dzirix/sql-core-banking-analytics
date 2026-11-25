-- ============================================================
-- Projet personnel — données fictives.
-- Requête 05 — Jointure simple (JOIN)
-- Question métier : pour chaque contrat actif, qui est le
-- client, quel produit a-t-il souscrit et pour quel montant ?
-- Vue "lisible par un humain" du portefeuille, utile en revue
-- avec les équipes métier.
-- ============================================================

SELECT
    c.contract_id,
    cu.first_name,
    cu.last_name,
    c.product_type,
    c.amount,
    c.signed_date
FROM contracts AS c
JOIN customers AS cu
  ON cu.customer_id = c.customer_id
WHERE c.status = 'ACTIVE'
ORDER BY c.signed_date;
