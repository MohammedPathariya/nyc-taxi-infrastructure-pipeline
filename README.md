# 🗽 NYC Transit Data Engineering Platform (2026)
An end-to-end data pipeline architected to process and analyze NYC Taxi & Limousine Commission data using a modern cloud-native stack.

## 🏗️ Project Architecture
I am building this platform using a Medallion Architecture (Bronze/Silver/Gold) to demonstrate production-grade data engineering practices.

### Phase 1: Infrastructure as Code (COMPLETE ✅)
* **Tools:** Terraform, GCP
* **Storage:** Google Cloud Storage (Data Lake) with optimized lifecycle policies.
* **Warehouse:** BigQuery (Data Warehouse) partitioned for cost-efficient querying.

### Phase 1.1: Orchestration (IN PROGRESS 🏗️)
* **Tools:** Apache Airflow, Docker
* **Task:** Ingesting monthly NYC TLC Parquet files into the Bronze layer.