CREATE ROLE ClaimsAnalyst LOGIN PASSWORD 'Analyst1';

CREATE ROLE ClaimsManager LOGIN PASSWORD 'Manager1';

GRANT SELECT ON Claims, Policies, PolicyTypes TO ClaimsAnalyst;

GRANT SELECT, INSERT, UPDATE, DELETE ON Claims, Policies, PolicyTypes TO ClaimsManager;
