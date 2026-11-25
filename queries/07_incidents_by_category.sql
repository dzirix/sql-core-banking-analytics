-- ============================================================
-- Projet personnel — données fictives.
-- Requête 07 — Incidents par catégorie (COUNT / AVG / GROUP BY)
-- Question métier : quelles catégories d'incidents reviennent
-- le plus souvent, et quel est leur délai moyen de résolution
-- en jours (incidents résolus uniquement) ?
-- Note dialecte : JULIANDAY est la fonction SQLite de calcul
-- d'écart de dates ; l'équivalent existe dans chaque SGBD
-- (DATEDIFF, DATE_DIFF...).
-- ============================================================

SELECT
    category,
    COUNT(*) AS incident_count,
    ROUND(AVG(JULIANDAY(resolved_date) - JULIANDAY(opened_date)), 1) AS avg_resolution_days
FROM incidents
WHERE status = 'RESOLVED'
GROUP BY category
ORDER BY incident_count DESC;
