-- Databricks notebook source
-- MAGIC %md
-- MAGIC DATA OBJECTS

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS testcatalog MANAGED LOCATION 'abfss://unity-catalog-storage@dbstorage3rj2kqqxtk6kw.dfs.core.windows.net/2081623243111762'

-- COMMAND ----------

USE CATALOG testcatalog

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS testdb

-- COMMAND ----------


CREATE DATABASE IF NOT EXISTS testdb

-- COMMAND ----------

USE testdb

-- COMMAND ----------

CREATE OR REPLACE TABLE silver
(
device_id INT,
mrn STRING,
name STRING,
time TIMESTAMP,
heartrate DOUBLE
);

-- COMMAND ----------

INSERT INTO silver VALUES
(23, '40580129', 'Nicholas Spears', '2020-02-01T00:01:58.000+0000', 54.0122153343),
(17, '52804177', 'Lynn Russell', '2020-02-01T00:02:55.000+0000', 92.5136468131),
(37, '65300842', 'Samuel Hughes', '2020-02-01T00:08:58.000+0000', 52.1354807863),
(23, '40580129', 'Nicholas Spears', '2020-02-01T00:16:51.000+0000', 54.6477014191),
(17, '52804177', 'Lynn Russell', '2020-02-01T00:18:08.000+0000', 95.033344842),
(37, '65300842', 'Samuel Hughes', '2020-02-01T00:23:58.000+0000', 57.3391541312),
(23, '40580129', 'Nicholas Spears', '2020-02-01T00:31:58.000+0000', 56.6165053697),
(17, '52804177', 'Lynn Russell', '2020-02-01T00:32:56.000+0000', 94.8134313932),
(37, '65300842', 'Samuel Hughes', '2020-02-01T00:38:54.000+0000', 56.2469995332),
(23, '40580129', 'Nicholas Spears', '2020-02-01T00:46:57.000+0000', 54.8372685558);

-- COMMAND ----------

SELECT * FROM testcatalog.testdb.silver where name LIKE 'Ly%'

-- COMMAND ----------

SHOW CATALOGS

-- COMMAND ----------

use testcatalog

-- COMMAND ----------

show schemas

-- COMMAND ----------

use testdb

-- COMMAND ----------

show tables

-- COMMAND ----------

describe silver

-- COMMAND ----------

use catalog `testcatalog`; select * from `testdb`.`silver` limit 100;
