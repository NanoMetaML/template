
import hydra
from omegaconf import DictConfig
from nanomodules import load_module_endpoint
from clearml import Task

def run_experiment(cfg: DictConfig) -> None:
    "Running experiment"

    task = Task.init(project_name=cfg.project_name, task_name=cfg.task_name)
    trainer = load_module_endpoint(cfg.trainer)
    dataset = load_module_endpoint(cfg.dataset)
    model = load_module_endpoint(cfg.model)
    trainer.fit(model, dataset["train"], dataset["valid"])