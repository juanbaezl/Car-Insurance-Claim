# Car-Insurance-Claim
## Author Juan Baez

End-to-end Machine Learning pipeline for Insurance Risk Scoring and Claims Prediction. Includes Azure architecture design, Power BI business dashboards, and optimized underwriting strategies.

## 📂 Project Structure

This repository is organized to maintain a clear separation between experimentation and production-ready code.

```
.
├── app/                # Source code for the API deployment (e.g., FastAPI)
├── data/               # Data storage and model artifacts
│   ├── raw/            # Original CSV datasets
│   └── model/          # Serialized final model (e.g., best_model_lgbm.joblib)
├── notebooks/          # Jupyter notebooks for EDA, training, and evaluation
├── Makefile            # Automation for dependency management
├── Dockerfile          # Docker configuration for environment reproducibility
├── pyproject.toml      # Dependency definitions via Poetry
└── poetry.lock         # Locked dependency versions
```

## Directory Overview

* **notebooks/:** Houses the full Data Science workflow, including data cleaning, feature engineering, and final model evaluation.

* **data/:** A centralized folder for datasets and the finalist model, making it easily accessible for the inference layer.

* **app/:** This directory is intended for the application layer. It will contain the API logic required to serve the model for real-time predictions.

## Dependency Management (Makefile)

To ensure a consistent development environment, we use a `Makefile` to interact with *Poetry*.

```Bash
make lock
```
* **Function:** Locks project dependencies into poetry.lock based on pyproject.toml.

* **Benefit:** Guarantees that all contributors and production environments use identical library versions.

```Bash
make install
```
* **Function:** An interactive utility to add and synchronize new libraries.

* **Workflow:** It prompts for the library name, runs poetry add, and automatically triggers make lock to update the lockfile.

## MLOps and Reproducibility

### Docker

For professional deployment, the use of *Docker* is mandatory to ensure full reproducibility. Containerizing the application eliminates "it works on my machine" issues by providing a standardized environment for the model to run, regardless of the underlying infrastructure.

### Azure Pipelines & Continuous Training (CT)
To maintain a mature MLOps lifecycle, we recommend implementing Azure Pipelines. This allows for:

* **Simplified Retraining:** Automated pipelines that can be triggered by new data arrivals to retrain the model and update the data/model/ directory.

* **Automated Deployment:** CI/CD workflows that rebuild the Docker image and redeploy the API whenever a new finalist model is approved.
