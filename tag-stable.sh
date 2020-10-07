#!/bin/bash
# ReadTheDocs expects version tags in 'x.y.z' format for building the 'stable' docs
VERSION=$(grep '^release =' doc/source/conf.py | sed 's/^release = "\(.*\)"/\1/')
git tag $VERSION
git push --tags
