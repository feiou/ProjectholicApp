#!/usr/bin/env bash
# IndexNow ping for projectholic.pro.
# Run AFTER you push to main and GitHub Pages has redeployed (~1–2 min).
# Usage: ./scripts/indexnow-ping.sh [optional extra URL] [optional extra URL...]
#
# Tells IndexNow-compatible search engines (Bing, Yandex, Naver, Seznam, and
# others) that listed URLs have changed. Cuts crawl latency from days to hours.
#
# Key + verification file are at:
#   key:           25eaa45d72da4aeeb6f61302e837c3d1
#   keyLocation:   https://projectholic.pro/25eaa45d72da4aeeb6f61302e837c3d1.txt

set -euo pipefail

KEY="25eaa45d72da4aeeb6f61302e837c3d1"
KEY_URL="https://projectholic.pro/${KEY}.txt"
HOST="projectholic.pro"

# Default URL list — site root, llms.txt, sitemap, every blog post, and /about.
DEFAULT_URLS=(
  "https://projectholic.pro/"
  "https://projectholic.pro/about.html"
  "https://projectholic.pro/llms.txt"
  "https://projectholic.pro/sitemap.xml"
  "https://projectholic.pro/blog/"
  "https://projectholic.pro/blog/project-gantt-guide.html"
  "https://projectholic.pro/blog/best-apps-for-adhd-freelancers.html"
  "https://projectholic.pro/blog/best-project-management-apps-for-mac.html"
  "https://projectholic.pro/blog/client-project-workflow-apps.html"
  "https://projectholic.pro/blog/freelancer-must-have-apps.html"
  "https://projectholic.pro/blog/freelancer-tool-project-planning.html"
  "https://projectholic.pro/blog/gantt-app-apple-freelancers.html"
  "https://projectholic.pro/blog/how-to-manage-multiple-client-projects.html"
  "https://projectholic.pro/blog/how-to-plan-project-on-ipad.html"
  "https://projectholic.pro/blog/project-planner-vs-todo-list.html"
)

# Append any URLs passed on the command line.
URLS=("${DEFAULT_URLS[@]}" "$@")

# IndexNow allows up to 10,000 URLs per request — we are nowhere near that.
URL_JSON=$(printf '"%s",' "${URLS[@]}")
URL_JSON="[${URL_JSON%,}]"

PAYLOAD=$(cat <<EOF
{
  "host": "${HOST}",
  "key": "${KEY}",
  "keyLocation": "${KEY_URL}",
  "urlList": ${URL_JSON}
}
EOF
)

echo "Pinging IndexNow with ${#URLS[@]} URL(s)..."
HTTP_STATUS=$(curl -s -o /tmp/indexnow_response.txt -w "%{http_code}" \
  -X POST https://api.indexnow.org/indexnow \
  -H "Content-Type: application/json; charset=utf-8" \
  -d "${PAYLOAD}")

echo "HTTP status: ${HTTP_STATUS}"
if [[ "${HTTP_STATUS}" == "200" || "${HTTP_STATUS}" == "202" ]]; then
  echo "Submitted. Crawl typically begins within an hour."
else
  echo "Unexpected status. Response body:"
  cat /tmp/indexnow_response.txt
  exit 1
fi
