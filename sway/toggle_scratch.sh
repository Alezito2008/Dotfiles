#!/bin/bash

SCRATCH_NAME="󰽉 Scratchpad"

CURRENT=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused).name')

if [ "$CURRENT" = "$SCRATCH_NAME" ]; then
	swaymsg workspace back_and_forth
else
	swaymsg workspace "$SCRATCH_NAME"
fi
