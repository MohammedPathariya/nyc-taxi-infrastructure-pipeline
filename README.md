# 🗽 NYC Transit Data Engineering Platform (2026)

An end-to-end data pipeline architected to process and analyze NYC Taxi & Limousine Commission data using a modern cloud-native stack.

## 🏗️ Project Architecture

This platform implements a **Medallion Architecture** (Bronze/Silver/Gold) to demonstrate production-grade data engineering practices, transitioning data from raw ingestion to analytical readiness.

---

## 🥉 Phase 1: Infrastructure & Orchestration (COMPLETE ✅)

**The Foundation: Landing 86M+ Records**

### ⚙️ Infrastructure as Code (IaC)

* **Terraform & GCP:** Provisioned a resilient Google Cloud environment, including GCS buckets with optimized lifecycle policies and BigQuery datasets.

### 🔄 Containerized Orchestration

* **Apache Airflow & Docker:** Deployed a full orchestration stack on Docker to manage complex backfill operations for 2024–2025 datasets.
* **Hybrid Ingestion:** Engineered a "Mac-to-Cloud" shuttle that throttles local resource usage while pushing high-volume Parquet data to the GCS Data Lake.

### 🔐 Security & Reliability

* **Authentication:** Implemented secure Service Account mapping via direct JSON credential injection within the Airflow metadata layer to bypass Docker volume inconsistencies.
* **Data Quality Audit:** Identified and handled upstream "404" responses and malformed 111-byte objects to maintain warehouse schema integrity.

---

## 🥈 Phase 2: Analytics Engineering (IN PROGRESS 🏗️)

**The Transformation: Building the Silver Layer**

* **Tooling:** `dbt` (Data Build Tool) & Google BigQuery.
* **Core Objectives:** Transforming raw external tables into high-performance, partitioned, and clustered native BigQuery tables.
* **Technical Roadmap:**
* **Data Type Casting:** Standardizing schema across Yellow and Green datasets (e.g., proper TIMESTAMP casting).
* **Temporal Filtering:** Removing legacy hardware "noise" (records from 2008/2009) and accidental future dates.
* **Data Imputation:** Addressing the ~14.5 million NULL values identified in `passenger_count` during Phase 1 profiling.