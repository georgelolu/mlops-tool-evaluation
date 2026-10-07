from prefect import flow, task
from train import train_model


@task(name="train-model")
def training_task():
    return train_model()


@flow(
    name="mlops-training-pipeline",
    log_prints=True,
)
def mlops_training_flow():
    return training_task()


if __name__ == "__main__":
    mlops_training_flow()
