#!/bin/bash
# Extracts all unique image paths from the dnd5e example spells.
# These are the known-valid icon paths that exist in the Foundry VTT dnd5e system.
grep -roh '"img": "[^"]*"' examples/dnd5e/packs/src/spells/ | sed 's/"img": "//;s/"//' | sort -u
