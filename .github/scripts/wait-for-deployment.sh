#!/bin/bash

# Script to wait for deployment by checking if the hash of a URL has changed
# Usage: ./wait-for-deployment.sh <URL> [timeout_in_seconds]

set -e

URL="${1:-https://dhp.uz/fhir/core/en/index.html}"
TIMEOUT="${2:-3600}"  # Default: 1 hour (3600 seconds)
CHECK_INTERVAL=30  # Check every 30 seconds

echo "Checking deployment status for: $URL"
echo "Timeout: ${TIMEOUT}s ($(($TIMEOUT / 60)) minutes)"
echo ""

# Get initial hash
echo "Fetching initial hash..."
INITIAL_HASH=$(curl -sL "$URL" | sha256sum | cut -d' ' -f1)
if [ -z "$INITIAL_HASH" ]; then
    echo "Failed to fetch initial hash"
    exit 1
fi
echo "Initial hash: $INITIAL_HASH"
echo ""

# Calculate end time
START_TIME=$(date +%s)
END_TIME=$((START_TIME + TIMEOUT))

# Poll for changes
echo "Waiting for changes..."
while true; do
    CURRENT_TIME=$(date +%s)
    ELAPSED=$((CURRENT_TIME - START_TIME))

    if [ $CURRENT_TIME -ge $END_TIME ]; then
        echo ""
        echo "Timeout reached after ${ELAPSED}s ($(($ELAPSED / 60)) minutes)"
        echo "The page hash has not changed."
        exit 1
    fi

    # Fetch current hash
    CURRENT_HASH=$(curl -sL "$URL" 2>/dev/null | sha256sum | cut -d' ' -f1 || echo "")

    if [ -z "$CURRENT_HASH" ]; then
        echo "Failed to fetch page (${ELAPSED}s elapsed)"
    elif [ "$CURRENT_HASH" != "$INITIAL_HASH" ]; then
        echo ""
        echo "Success! Page has been updated after ${ELAPSED}s ($(($ELAPSED / 60)) minutes)"
        echo "Old hash: $INITIAL_HASH"
        echo "New hash: $CURRENT_HASH"
        exit 0
    else
        REMAINING=$((TIMEOUT - ELAPSED))
        echo "Waiting for changes... (${ELAPSED}s elapsed, ${REMAINING}s remaining)"
    fi

    # Wait before next check
    sleep $CHECK_INTERVAL
done
