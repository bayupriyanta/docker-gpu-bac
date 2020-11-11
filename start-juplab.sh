#!/bin/bash
token=$(openssl rand -base64 48 | cut -c1-8)
echo $token > pass.txt
jupyter-lab --allow-root --ip='0.0.0.0' --NotebookApp.token=$token --NotebookApp.notebook_dir='/'
