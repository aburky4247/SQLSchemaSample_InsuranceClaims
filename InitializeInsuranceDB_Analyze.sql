--CountOfClaims
SELECT DISTINCT
p.PolicyTypeID
,pt.PolicyTypeName
,pt.Description AS PolicyTypeDescription
,Count(*) AS CountOfClaims
FROM claims c
	LEFT JOIN Policies p ON p.PolicyID = c.PolicyID
		LEFT JOIN PolicyTypes pt ON pt.PolicyTypeID = p.PolicyTypeID
GROUP BY
p.PolicyTypeID
,pt.PolicyTypeName
,pt.Description;

--Claim frequency and average amount by Month
SELECT 
date_trunc('month', claimdate) AS ClaimMonth
,Count(*) AS ClaimCount
,Avg(ClaimAmount) AS AvgClaimAmount
FROM claims
GROUP BY
date_trunc('month', claimdate);