# Databricks notebook source
# MAGIC %sql
# MAGIC CREATE CATALOG IF NOT EXISTS ultimatecatalog MANAGED LOCATION 'abfss://blitzdbrg-ext@blitzdbrgextstorage.dfs.core.windows.net/TestDir/One'

# COMMAND ----------

# MAGIC %sql
# MAGIC USE CATALOG ultimatecatalog

# COMMAND ----------

# MAGIC %sql
# MAGIC CREATE SCHEMA IF NOT EXISTS ultimatedb

# COMMAND ----------

# MAGIC %sql
# MAGIC USE ultimatedb

# COMMAND ----------

# MAGIC %sql
# MAGIC CREATE TABLE ultimatecatalog.ultimatedb.insuranceclaims;
# MAGIC
# MAGIC COPY INTO ultimatecatalog.ultimatedb.insuranceclaims
# MAGIC FROM 'abfss://blitzdbrg-ext@blitzdbrgextstorage.dfs.core.windows.net/TestDir/insurance_claims.csv'
# MAGIC FILEFORMAT = CSV
# MAGIC COPY_OPTIONS ('mergeSchema' = 'true');
# MAGIC
# MAGIC
# MAGIC --insurance_claims.csv
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from ultimatecatalog.ultimatedb.insuranceclaims 
# MAGIC where `_c4` = 'OH'
