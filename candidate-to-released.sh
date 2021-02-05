#!/bin/bash
set -e
usage() {
    echo "Moves all builds from their *-candidate tags to *" >&2
    echo "Usage: $0 <ver-rel>, example: $0 0.7.2-1" >&2
    exit 1
}
[[ -z "$VERREL" ]] && VERREL="$1"
[[ -z "$VERREL" ]] && usage

brew move-build beaker-harness-rhel-5{-candidate,} beaker-system-scan-$VERREL.el5bkr
brew move-build beaker-harness-rhel-6{-candidate,} beaker-system-scan-$VERREL.el6bkr
brew move-build beaker-harness-rhel-7{-candidate,} beaker-system-scan-$VERREL.el7bkr
brew move-build beaker-harness-rhel-8{-candidate,} beaker-system-scan-$VERREL.el8bkr
brew move-build eng-fedora-31{-candidate,} beaker-system-scan-$VERREL.fc31eng
brew move-build eng-fedora-32{-candidate,} beaker-system-scan-$VERREL.fc32eng
brew move-build eng-fedora-33{-candidate,} beaker-system-scan-$VERREL.fc33eng
brew move-build eng-fedora-34{-candidate,} beaker-system-scan-$VERREL.fc34eng
