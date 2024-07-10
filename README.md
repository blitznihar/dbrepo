# Add ADLS Gen2 Storage account as external location in Azure Databricks

After Running the terraform scripts as mentioned in the repository: https://github.com/blitznihar/azuredatabricks-terraform/

Got to Catalog --> External Data --> Create Location

Create New Storage Credentials --> Azure Managed Identity

Copy the resource ID for the connector created from the azure portal and paste in Access Connector ID field

Add the URL: abfss://blitzdbrg-ext@blitzdbrgextstorage.dfs.core.windows.net/

Create and Test

Upload Insurance insurance_claims.csv in the 'TestDir'

and then run the insuranceclaims.py scripts

