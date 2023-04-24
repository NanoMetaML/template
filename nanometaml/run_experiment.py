
import hydra
from omegaconf import DictConfig
import nanomodules


from clearml import Task
import torch

torch.set_float32_matmul_precision("medium")

def run_experiment(cfg: DictConfig) -> None:
    "Running experiment"

    task = Task.init(project_name=cfg.project_name, task_name=cfg.task_name)

    trainer = nanomodules.loadModuleFromConfig(cfg.trainer)
    dataset = nanomodules.loadModuleFromConfig(cfg.dataset)
    model = nanomodules.loadModuleFromConfig(cfg.model)

    trainer.fit(model, dataset["train"], dataset["valid"])