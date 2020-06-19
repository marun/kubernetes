#!/usr/bin/env bash

# shellcheck source=openshift-hack/lib/deps.sh
source "$(dirname "${BASH_SOURCE[0]}")/lib/deps.sh"

# Upstream testing requires recent bash (>= 4.3). If the system bash
# is not recent (e.g openshift ci and macos), download and compile a
# newer bash and make it available in the path.
PATH="$( os::deps::path_with_recent_bash )"
export PATH

/usr/bin/env bash --version

make test
