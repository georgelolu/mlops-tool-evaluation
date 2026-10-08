# MLOps Tool Evaluation Matrix

## Project Objective

Evaluate candidate MLOps tools across experiment tracking, model registry,
CI/CD, workflow orchestration, feature management, model monitoring,
artifact storage, and infrastructure automation.

---

## Evaluation Criteria

| Criterion | Description |
|---|---|
| Functionality | Does the tool solve the intended MLOps problem? |
| Integration | How easily does it integrate with the existing stack? |
| Deployment | How easy is it to deploy and operate? |
| Automation | Can the workflow be automated through CI/CD? |
| Scalability | Can the tool support larger workloads? |
| Security | Authentication, authorization and secret management capabilities |
| Observability | Logging, metrics and operational visibility |
| Developer Experience | Ease of use and learning curve |
| Cost | Infrastructure and operational cost |
| Portability | Cloud/vendor lock-in considerations |
| Community | Ecosystem, documentation and adoption |
| Production Readiness | Suitability for real-world environments |

---

# Tool Evaluation

## 1. Experiment Tracking

### Candidate Tools

- MLflow
- Weights & Biases
- Neptune

### Selected Tool

MLflow

### Reason

MLflow provides an open-source platform for experiment tracking,
model management and artifact management and integrates naturally
with the project's self-hosted AWS environment.

### Evaluation

| Criterion | Rating |
|---|---|
| Functionality | Excellent |
| Integration | Excellent |
| Deployment | Excellent |
| Automation | Excellent |
| Scalability | Good |
| Security | Good |
| Developer Experience | Excellent |
| Cost | Excellent |
| Portability | Excellent |
| Production Readiness | Good |

### Decision

**Selected: MLflow**

---

# 2. Model Registry

### Candidate Tools

- MLflow Model Registry
- SageMaker Model Registry
- Vertex AI Model Registry

### Selected Tool

MLflow Model Registry

### Reason

MLflow provides model versioning and lifecycle management while
remaining cloud-neutral.

### Decision

**Selected: MLflow Model Registry**

---

# 3. CI/CD

### Candidate Tools

- GitHub Actions
- GitLab CI/CD
- Jenkins

### Selected Tool

GitHub Actions

### Reason

The project source code is hosted on GitHub and GitHub Actions
provides native repository integration, workflow automation and
OIDC-based authentication to AWS.

### Decision

**Selected: GitHub Actions**

---

# 4. Workflow Orchestration

### Candidate Tools

- Prefect
- Apache Airflow
- Dagster

### Selected Tool

Prefect

### Reason

Prefect provides Python-native workflow orchestration with a
relatively lightweight operational footprint.

### Decision

**Selected: Prefect**

---

# 5. Feature Management

### Candidate Tools

- Feast
- Tecton
- AWS SageMaker Feature Store

### Selected Tool

Feast

### Reason

Feast provides an open-source feature store architecture with
offline and online feature serving capabilities.

### Decision

**Selected: Feast**

---

# 6. Model Monitoring

### Candidate Tools

- Evidently
- WhyLabs
- Arize AI
- AWS SageMaker Model Monitor

### Selected Tool

Evidently

### Reason

Evidently provides an open-source approach to model and data
monitoring and is suitable for demonstrating monitoring concepts
without introducing a proprietary platform dependency.

### Decision

**Selected: Evidently**

---

# 7. Artifact Storage

### Selected Tool

Amazon S3

### Reason

S3 provides durable object storage for ML artifacts, datasets,
models and experiment outputs.

### Decision

**Selected: Amazon S3**

---

# Final Recommended MLOps Stack

| Capability | Selected Tool |
|---|---|
| Experiment Tracking | MLflow |
| Model Registry | MLflow |
| CI/CD | GitHub Actions |
| Orchestration | Prefect |
| Feature Store | Feast |
| Monitoring | Evidently |
| Artifact Storage | Amazon S3 |
| Metadata Database | PostgreSQL |
| Infrastructure | Terraform |
| Cloud | AWS |
| Deployment | AWS Systems Manager |
| Containerization | Docker |
