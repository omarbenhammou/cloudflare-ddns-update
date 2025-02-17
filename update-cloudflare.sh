#!/bin/bash

# Cloudflare API Details
ZONE_ID="YOUR_ZONE_ID"
API_TOKEN="YOUR_API_TOKEN"
RECORD_ID="YOUR_RECORD_ID"
DNS_NAME="sub.yourdomain.com"

# Get Public IP
IP=$(curl -s https://ipv4.icanhazip.com)

# Update Cloudflare DNS Record
curl -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$RECORD_ID" \
     -H "Authorization: Bearer $API_TOKEN" \
     -H "Content-Type: application/json" \
     --data "{\"type\":\"A\",\"name\":\"$DNS_NAME\",\"content\":\"$IP\",\"ttl\":120,\"proxied\":true}"
