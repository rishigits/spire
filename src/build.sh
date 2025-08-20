#!/bin/bash
set -e -o pipefail
version=$2
trap 0 1 2 ERR
bash /tmp/linux-on-ibm-z-scripts/Spire/{version}build_spire.sh -y
tar cvfz spire-{version}-linux-s390x.tar.gz spire/bin/spire-agent spire/bin/spire-server spire/conf/agent/agent.conf spire/conf/server/server.conf
exit 0
