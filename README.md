# Dyploma
**Goal:** *Learn how to deploy Multi-Tier application with persistance storage to Kubernetes cluster*

![Application architecture](./images/dyploma.drawio.png)


# Prerequirements
- [Install docker](https://docs.docker.com/engine/install/ubuntu/)
- [Install kubectl](https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/)
- [Install kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
- [Install kustomize](https://kubectl.docs.kubernetes.io/installation/kustomize/binaries/)

# Project structure
```bash
.
├── application
│   ├── kustomization.yaml
│   ├── mysql
│   │   ├── deployment.yaml
│   │   ├── kustomization.yaml
│   │   ├── network-policy.yaml
│   │   ├── pvc.yaml
│   │   └── service.yaml
│   └── wordpress
│       ├── deployment.yaml
│       ├── kustomization.yaml
│       ├── network-policy.yaml
│       ├── pvc.yaml
│       └── service.yaml
├── cluster.yaml
├── images
│   └── dyploma.drawio.png
├── Makefile
└── README.md
```

# Getting Started

**1. Create cluster**

*Create `kind` cluster with 2 nodes for deploying and testing Multi-Tier wordpress application*
```bash
    make cluster-create
```

**2. Deploy the application**

*Deploy the application with all required manifests for services,deployments,secrets,pvcs, etc...*
```bash
    make application-create
```

**3. Exposing the port of wordpress instance**

*To get access to the application we neec to expose the port on local machine*
```bash
    make applicaion-expose
```

**4. Access the wordpress using the browser**
[http://localhost:8080](http://localhost:8080)

*For the first time application will require intitial configuration*

# Clean up
**Delete application and local cluster**

```bash
    make clean-up
```

# TODO 
- [x] Install required tools
- [x] Create k8s cluster
- [x] Deploy wordpress instance
- [x] Deploy MySQL database
- [x] Configure PVC volumes
- [x] Test the application
- [x] Add network policies 
- [x] Add `Makefile` for the project
- [x] Add Kustomize files
- [x] Add `Getting Started` section
- [x] Add `Project structure` section
- [x] Add the `Clean Up` section
