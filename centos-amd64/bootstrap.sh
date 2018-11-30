#!/bin/bash
set -euo pipefail

sudo yum update -y
sudo yum install -y http://downloads.dlang.org/releases/2.x/2.083.0/dmd-2.083.0-0.fedora.x86_64.rpm
