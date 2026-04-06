This repository contains the implementation details and datasets used in our study on predicting the popularity of GitHub repositories using Extreme Learning Machine (ELM).

📌 Overview

In our study entitled "On the Use of Extreme Learning Machine for GitHub Repository Popularity Prediction Based on Static Software Metrics", we introduce an automated dataset construction tool that retrieves data from both the GitHub REST API and SourceMonitor CLI. The tool collects repository-level metrics and static software metrics across various popular project domains.

The main objective is to investigate the relationship between static software metrics and GitHub star count, which is widely considered an indicator of repository popularity.

To achieve this, the Extreme Learning Machine (ELM) method is employed, and its prediction performance is evaluated using the following metrics:

Mean Absolute Error (MAE)
Mean Squared Error (MSE)
Coefficient of Determination (R²)

📊 Datasets

For the first time, seven distinct datasets are constructed based on different software project domains:

* CICD Apps
* Database Apps
* Desktop Apps
* Learning-based Apps
* Mobile Apps
* Service Apps
* Web Apps

In addition to these, a Total dataset is created by combining all unique datasets.

⚙️ Methodology

* Data is automatically collected using GitHub API and SourceMonitor CLI
* Extracted features include:
* GitHub metrics (e.g., star count, fork count, size)
* Static software metrics (code-level features)
* Data preprocessing is applied (normalization)
* ELM model is trained and tested on each dataset
* Performance is evaluated using MAE, MSE, and R²

▶️ How to Run

To execute the main experiment:

```bash
</> MATLAB
run.m
```
Datasets are automatically generated via the provided tool

