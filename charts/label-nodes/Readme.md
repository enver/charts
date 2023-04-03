# label-nodes
Check out [label-nodes](https://github.com/enver/label-nodes) project for details

## Installation

`helm install label-nodes enver/label-nodes -n <namespace>`

Optionally override values:
* interval - interval in seconds application should run (default `60`)
* source_label_prefix - Source label prefix to search for (default `node-role.kubernetes/`)
* destination_label_prefix - Destination label prefix to write to (default `node-role.kubernetes.io/`)
* nodeSelector - Node selector
* tolerations - Taint tolerations
