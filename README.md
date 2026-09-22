# My_Marvin

An automated, fully reproducible **Jenkins** automation instance configured via code, developed as part of the **Epitech** DevOps curriculum.

## Project Overview

The objective of **My_Marvin** is to master the foundations of CI/CD orchestration by building a self-configuring Jenkins server. Rather than manually clicking through the GUI, the entire server—including global security, users, role-based access controls, credentials, and job hierarchies—is fully initialized upon startup using configuration scripts.

## Architecture & Automation Stack

The project relies on two primary infrastructure-as-code philosophies within Jenkins:

1. **Jenkins Configuration as Code (JCasC):** Managed via a standalone YAML definition (`jenkins.yaml`) to seamlessly instantiate server-level settings (authorization strategies, plugins, parameters, and system layouts).
2. **Job DSL (Groovy):** Dynamic programmatic configuration script to automatically provision complex multi-stage pipeline folders and specific build configurations upon the server's initial boot.

```text
[ Docker / Jenkins Base ] ➔ [ JCasC (jenkins.yaml) ] ➔ [ Job DSL (Groovy) ] ➔ [ Fully Operational Instance ]
```

## Features & Evaluated Criteria

The script architecture maps the default configuration requirements:

* **Global Configuration:** Pre-configures system parameters, executive executors, and administrative security definitions without manual intervention.
* **User Provisioning:** Automatically provisions multiple user profiles with distinct credentials securely loaded.
* **Role-Based Access Control (RBAC):** Restricts interface actions by creating specialized role matrix pools (e.g., `admin`, `developer`, `guest`) linked to targeted file/folder permissions.
* **Automated Job & Folder Creation:** Programmatically builds structured folders, standard cron tasks, and parameterized pipelines leveraging Groovy code execution.

## Project Structure

```text
.
├── jenkins.yaml          # Jenkins Configuration as Code (JCasC) definition
├── job_dsl.groovy        # Job DSL script containing the programmatic build instructions
├── plugins.txt           # Required Jenkins plugins list to install during setup
└── README.md
```

## Getting Started

### Prerequisites

You need **Docker** and **Docker Compose** installed on your machine to orchestrate the immutable image sequence.

### Local Deployment & Execution

1. Clone the repository:
   ```bash
   git clone https://github.com/Ry0s43b4/My_Marvin.git
   ```
2. Navigate into the directory:
   ```bash
   cd My_Marvin
   ```
3. Run your configured Jenkins setup using your localized testing environment or Docker engine:
   ```bash
   docker-compose up --build
   ```
4. Access the fully initialized instance on your browser: [http://localhost:8080](http://localhost:8080)

---
Automate everything, trust nothing! 🤖🐚
