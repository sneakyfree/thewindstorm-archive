#!/usr/bin/env bash
# Write one reviewed dispatch back to D1. Usage: scripts/apply.sh dispatches/NN-slug.html
# Token: the D1-scoped GrantWhitmerBriefWriter token, read from the lockbox at run time.
set -euo pipefail
f="$1"; [ -f "$f" ]
T="${CF_D1_TOKEN:-$(grep 'GrantWhitmerBriefWriter' ~/kit-army-config/ACCESS_LOCKBOX.md | grep -oE 'cfat_[A-Za-z0-9_-]{20,}' | head -1)}"
python3 - "$f" "$T" <<'PY'
import json, re, sys, urllib.request
f, tok = sys.argv[1], sys.argv[2]
raw = open(f).read()
m = re.match(r'<!-- id: (\d+) \| published: [^>]* -->\n<!-- subject: (.*) -->\n<!-- preview: (.*) -->\n', raw)
aid, subject, preview = int(m.group(1)), m.group(2), m.group(3)
body = raw[m.end():].rstrip('\n')
url = 'https://api.cloudflare.com/client/v4/accounts/193b347aedeaafe35de0b5a534b2d9aa/d1/database/c4d5aabe-a97d-489e-a26e-93279794859a/query'
req = urllib.request.Request(url, method='POST', headers={'Authorization': 'Bearer ' + tok, 'content-type': 'application/json', 'User-Agent': 'thewindstorm-archive-apply'},
  data=json.dumps({'sql': "UPDATE articles SET body_html=?1, subject=?2, preview=?3, updated_at=datetime('now') WHERE id=?4 AND published_at IS NOT NULL",
                   'params': [body, subject, preview, aid]}).encode())
res = json.load(urllib.request.urlopen(req))
ch = res['result'][0]['meta']['changes']
print(f'id {aid}: {ch} row updated'); sys.exit(0 if ch == 1 else 1)
PY
