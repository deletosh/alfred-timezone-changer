#!/bin/bash

timezone="$1"

if [ -z "$timezone" ]; then
    echo "❌ Error: Please provide a timezone" >&2
    echo "Timezone Error|Please provide a timezone"
    exit 1
fi

# Validate timezone format (basic security check)
if ! [[ "$timezone" =~ ^[A-Za-z0-9_/+-]+$ ]]; then
    echo "❌ Invalid timezone format: $timezone" >&2
    echo "Timezone Error|Invalid timezone format"
    exit 1
fi

# Log the attempt for debugging
echo "🔄 Attempting to change timezone to: $timezone" >&2

# Change timezone with better error handling
if osascript -e "do shell script \"sudo systemsetup -settimezone '$timezone'\" with administrator privileges" 2>/dev/null; then
    # Get current time for confirmation
    current_time=$(date "+%I:%M %p %Z")
    current_date=$(date "+%A, %B %d")
    
    # Log success to stderr (for debugging)
    echo "✅ Timezone successfully changed to $timezone" >&2
    
    # Output notification content for Post Notification
    echo "Timezone Changed|Now in $timezone|$current_date at $current_time"
else
    # Log error to stderr (for debugging)
    echo "❌ Failed to change timezone to $timezone" >&2
    
    # Output notification content for Post Notification
    echo "Timezone Error|Failed to change timezone. Check permissions and try again."
fi