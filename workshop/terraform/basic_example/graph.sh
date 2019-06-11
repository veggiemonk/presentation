#!/bin/bash

echo "Graph Terraform (with graphviz)"
terraform graph | dot -Tpng > graph.png
