# opentofu_demo

## Overview

This repository contains five standalone examples illustrating how to use OpenTofu:

1. **basics** – Your first OpenTofu configuration: provider setup, two simple resources, variables, outputs, and terraform.tfvars.
2. **count** – Shows how to create multiple instances of a resource using the `count` meta-argument.  
3. **for_each** – Shows how to create multiple instances of a resource using `for_each`.  
4. **ternary_operators** – Uses ternary expressions to conditionally create resources.
5. **tofu_extension** – Example of using .tofu files

Each example is self-contained in its own folder. You can explore them in any order.


## Prerequisites

Before running the examples in this repository, ensure the following tools are installed:

### 1. OpenTofu

Install on macOS (Homebrew):

```bash
brew install opentofu
```

For other operating systems, check out the installation guides from [here](https://opentofu.org/docs/intro/install/)

### 2. Minikube and kubectl

All examples are leveraging Kubernetes.

Install on macOS (Homebrew):

```bash
brew install minikube
brew install kubectl
```

For other operating systems, check out the installation guides from [here](https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Fx86-64%2Fstable%2Fbinary+download)


### 3. An IDE of your choice

Recommended options:
- Visual Studio Code with the HashiCorp Terraform extension
- JetBrains IntelliJ IDEA with the Terraform plugin
- Vim/Neovim
- Cursor AI
- Windsurf