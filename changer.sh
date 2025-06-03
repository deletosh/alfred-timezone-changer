#!/bin/bash

timezone="$1"

if [ -z "$timezone" ]; then
    osascript -e "display notification \"Please provide a timezone\" with title \"Timezone Error\""
    echo "❌ Error: Please provide a timezone"
    exit 1
fi

# Change timezone
if osascript -e "do shell script \"sudo systemsetup -settimezone '$timezone'\" with administrator privileges" 2>/dev/null; then
    # Get current time for confirmation
    current_time=$(date "+%I:%M %p %Z")
    current_date=$(date "+%A, %B %d")

    # Show success notification
    osascript -e "display notification \"$current_date at $current_time\" with title \"Timezone Changed\" subtitle \"Now in $timezone\""

    echo "✅ Timezone changed to $timezone"
else
    # Handle errors
    osascript -e "display notification \"Invalid timezone or permission denied\" with title \"Timezone Error\""
    echo "❌ Failed to change timezone to $timezone"
fi