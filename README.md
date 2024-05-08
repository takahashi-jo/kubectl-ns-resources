# kubectl-ns-resources.sh

This script allows users to list all resources in a specified Kubernetes namespace using kubectl. It runs parallel queries to fetch resources, improving the performance and output organization.

## Prerequisites

- Kubernetes cluster with kubectl configured
- GNU Parallel installed

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/kubectl-ns-resources.git
    ```
2. Make the script executable:  
    ```bash
    chmod +x kubectl-ns-resources.sh
    ```

## Usage

Run the script by specifying a namespace as an argument. If no namespace is specified, it defaults to 'default'.

```bash
./kubectl-ns-resources.sh [namespace]
```

Example:  

```bash
./kubectl-ns-resources.sh kube-system
```

## Features

- Lists all resources in the given namespace.
- Highlights empty resources in blue and populated resources in yellow for better visibility.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue if you have suggestions or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
