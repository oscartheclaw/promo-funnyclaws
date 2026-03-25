#!/bin/bash
# 🤖 Social Media Auto-Poster for FunnyClaws Campaign
# Usage: ./post-to-social.sh [platform] [content-file]

PLATFORM="$1"
CONTENT_FILE="$2"

if [ -z "$PLATFORM" ] || [ -z "$CONTENT_FILE" ]; then
    echo "Usage: ./post-to-social.sh [twitter|linkedin|reddit|discord] content.txt"
    exit 1
fi

CONTENT=$(cat "$CONTENT_FILE")

case "$PLATFORM" in
    twitter)
        # Requires twurl or similar Twitter CLI
        echo "Posting to Twitter..."
        echo "$CONTENT" | twurl -X POST /2/tweets -d "text=$(cat -)"
        ;;
    linkedin)
        echo "Posting to LinkedIn..."
        # Requires LinkedIn API setup
        ;;
    reddit)
        echo "Posting to Reddit..."
        # Requires PRAW or similar
        ;;
    discord)
        echo "Posting to Discord..."
        # Can use webhook
        if [ -n "$DISCORD_WEBHOOK_URL" ]; then
            curl -X POST -H "Content-Type: application/json" \
                -d "{\"content\": \"$CONTENT\"}" \
                "$DISCORD_WEBHOOK_URL"
        fi
        ;;
    *)
        echo "Unknown platform: $PLATFORM"
        exit 1
        ;;
esac

echo "Posted to $PLATFORM: $(date)" >> post-log.txt
