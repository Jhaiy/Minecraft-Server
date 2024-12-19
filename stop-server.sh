#!/bin/bash

sudo killall ngrok

sudo killall screen

discord_url="https://discordapp.com/api/webhooks/1318779458131460147/gXLgsFnRSaGgeuI9NlSDTvCmgaUe-9_ImyosPcBHu-cGpbaVDq1UylUKCW0yutuzzHXg"

generate_post_data() {
  cat <<EOF
{
  "content": "",
  "embeds": [{
    "title": "SERVER STATUS:",
    "description": "Server Closed",
    "color": "45973"
  }]
}
EOF
}


# POST request to Discord Webhook
curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data)" $discord_url
