# NanoML Github Template

[https://github.com/NanoMetaML](https://github.com/NanoMetaML)

Template for all NanoML github repos. 


We implement 3 good practices for managing our repos.

1. Virtual environments
2. Git
3. Setuptools

To ensure our code is reusable within any environment, we setup all nanoml modules with a predefined setup tools.

# Our goal

Our goal is to make our code as easy to use as

    pip install our-package

this isn't possible with proper version control for building the package.


## Why do we as academics care?

Academia should provide access to education with as few hurdles as possible. By setting up virtual environments, version control, and setuptools, we take several steps to making our research available to everyone.

## Version Control

Git helps us track changes in our code, collaborate with other team members, and manage releases. It also allows others to easily contribute to our projects and fork them for their own use.

## Virtual Environments

Virtual environments are essential for isolating project dependencies and avoiding conflicts between different Python packages. We use virtual environments to manage and install project-specific packages, ensuring a consistent and reproducible development environment for all contributors.

## Setuptools

Setuptools is a widely used package management tool for Python. We use it to define, package, and distribute our code as reusable modules or libraries. This makes it easy for others to install and use our code without worrying about dependencies or compatibility issues.

# Getting Started

To get started with our NanoML Github Template, follow these steps:

1. Clone the repository:

        git clone https://github.com/nanoml/template.git

2. Change directory to the cloned repository:

        cd template

3. Create a virtual environment and activate it:


        python -m venv .venv
        source .venv/bin/activate  # For Linux/Mac
        .venv\Scripts\activate     # For Windows

4. Install the required packages:

        pip install -r requirements.txt

5. Install the package in editable mode:

        pip install -e .

Note: This means this package is now available on your local machine! Access it in your scripts for testing. 



## Setup Clearml

Go to [clear.ml](https:\\clear.ml) and setup an account. Then email Blake to get access to the NanoML workspace.  

Now, you're ready to start developing your own NanoML projects using this template.

# Workflow

 A machine learning experiment is built using three core components: 

 1. Datasets
 2. Models
 3. Trainers

The datasets contain all the data we need for an experiment. We pull in datasets from clearml and locally.

All three of these components are loaded using modules.

## NanoModules

`nanomodules` is a lightweight package (literally one function) that calls the `load` function in a module at a path. That means we can keep our models, datasets, and trainers in self contained modules and reused across projects. Our goal with nanomodules is to not reinvent the wheel for every similar nano project.

## Datasets

Datasets are available on kaggle (public facing) and clearml (private). 

## Models 

Models are available on the official NanoMetaML github. 

## Trainer

Preconfigured pytorch-lightning trainers.


## OPTIONAL

Become a collaborator on the NanoMetaML organization.

[https://github.com/NanoMetaML](https://github.com/NanoMetaML)

# Contributing

We welcome contributions from the community! If you would like to contribute to our projects, please follow these steps:

1. Fork the repository.

2. Create a new branch for your changes.

3. Make your changes and commit them, making sure to follow our commit message guidelines.

4. Push your changes to your fork.

5. Create a pull request against our repository, describing your changes and any relevant information.

Our team will review your pull request and provide feedback or merge it if approved.
# License

All NanoML projects are released under the MIT License. This permissive license allows you to use, modify, and distribute our code, as long as you include the original copyright and license information.
