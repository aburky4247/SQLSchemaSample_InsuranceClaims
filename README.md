This repository consists of five PostgreSQL scripts that will create a sample database schema for Insurance Claims. This schema includes the following tables: claims, customers, policies, and policy types. The scripts are as follows:
1) InitializeInsuranceDB_CreateTables: creates the tables included in this database schema with their primary and foreign keys defined
2) InitializeInsuranceDB_LoadTables: loads sample data into the tables created in step 1
3) InitializeInsuranceDB_Optimize: creates an index for a field that is used in the analyze step 5
4) InitializeInsuranceDB_CreateRoles: creates roles for a read-only user and a read + write user
5) InitializeInsuranceDB_Analyze: Runs quick analysis SELECT statements

Run these scripts in order on your localDB and play around with other configurations and analyses!
