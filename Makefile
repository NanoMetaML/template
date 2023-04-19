AUTHOR_NAME=Alexander Nano
QUEUE_NAME=brk1080

MODULE_NAME=test_module
REPO_NAME=modules

SCRIPT_PATH=./run.py
EXP_PATH=./tests/experiments/
EXP_NAME=load_data

CC=python
GIT_MESSAGE=Test commit
BRANCH=master

init:
	python -m venv .venv
	source .venv/bin/activate

commit:
	git add .
	git commit -m "$(GIT_MESSAGE)"

module:
	@echo "Building module" ./$(REPO_NAME)"/"$(MODULE_NAME) 
	@mkdir -p ./$(REPO_NAME)/$(MODULE_NAME)
	@touch ./$(REPO_NAME)/$(MODULE_NAME)/__init__.py
	@echo "# Module $(MODULE_NAME)\n# Author: $(AUTHOR_NAME)\n# Date: \nfrom .module import load\n" >> ./$(REPO_NAME)/$(MODULE_NAME)/__init__.py
	@echo "# Module $(MODULE_NAME)\n# Author: $(AUTHOR_NAME)\n# Date: \ndef load(**kwargs):\n	return NotImplementedError('Load not implemented for module $(MODULE_NAME)')\n" >> ./$(REPO_NAME)/$(MODULE_NAME)/module.py

run_clearml: 
	clearml-task --script $(SCRIPT_PATH) --project QuEra --name $(EXP_NAME)  --branch $(BRANCH) --requirements requirements.txt --args exp_path=$(EXP_PATH) exp_name=$(EXP_NAME) --queue $(QUEUE_NAME)

run_local:
	python $(SCRIPT_PATH) exp_path=$(EXP_PATH) exp_name=$(EXP_NAME)

