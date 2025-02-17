FROM alpine:latest

# Install curl
RUN apk add --no-cache curl bash

# Copy script into container
COPY update-cloudflare.sh /app/update-cloudflare.sh

# Set permissions
RUN chmod +x /app/update-cloudflare.sh

# Define entrypoint
ENTRYPOINT ["/app/update-cloudflare.sh"]
