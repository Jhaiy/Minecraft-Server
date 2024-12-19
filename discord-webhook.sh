#!/bin/bash

# Fetch ngrok tunnel information from the local API
NGROK_API_URL="http://127.0.0.1:4040/api/tunnels"

# Get the tunnel public URL using curl and jq
PUBLIC_URL=$(curl -s $NGROK_API_URL | jq -r '.tunnels[0].public_url')

# Extract the IP address (for http/https tunnels)
if [[ $PUBLIC_URL == http* ]]; then
    IP_ADDRESS=$(echo $PUBLIC_URL | sed -E 's#http(s)?://([^:/]+).*#\2#')
    echo "Public IP Address: $IP_ADDRESS"
else
    echo "Unable to extract IP. Public URL: $PUBLIC_URL"
fi

discord_url="https://discordapp.com/api/webhooks/1318779458131460147/gXLgsFnRSaGgeuI9NlSDTvCmgaUe-9_ImyosPcBHu-cGpbaVDq1UylUKCW0yutuzzHXg"

generate_post_data() {
  cat <<EOF
{
  "content": "",
  "embeds": [{
    "title": "SERVER IP:",
    "description": "NGROK IP: $PUBLIC_URL\n\n! ! ALERT ! !\n\nPlease remove the 'tcp://'\n\nSTATIC IP: 147.185.221.24:32251 ",
    "color": "45973"
  }]
}
EOF
}


# POST request to Discord Webhook
curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data)" $discord_url
