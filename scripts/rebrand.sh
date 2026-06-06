#!/bin/bash
# Meridian Desktop Rebranding Script
# Run this after syncing apps/desktop/ from upstream Hermes.
set -euo pipefail

echo "=== Applying Meridian Desktop branding ==="

sed -i '' 's/"name": "hermes"/"name": "meridian-desktop"/' package.json
sed -i '' 's/"productName": "Hermes"/"productName": "Meridian"/' package.json
sed -i '' 's/"description": "Native desktop shell for Hermes Agent."/"description": "Meridian AI Desktop — autonomous AI that grows with you."/' package.json
sed -i '' 's/"author": "Nous Research"/"author": "Meridian AI"/' package.json
sed -i '' 's/"appId": "com.nousresearch.hermes"/"appId": "com.meridian.desktop"/' package.json
sed -i '' 's/"executableName": "Hermes"/"executableName": "Meridian"/' package.json
sed -i '' 's/"artifactName": "Hermes-/artifactName": "Meridian-/' package.json
sed -i '' 's/"CFBundleDisplayName": "Hermes"/"CFBundleDisplayName": "Meridian"/' package.json
sed -i '' 's/"CFBundleExecutable": "Hermes"/"CFBundleExecutable": "Meridian"/' package.json
sed -i '' 's/"CFBundleName": "Hermes"/"CFBundleName": "Meridian"/' package.json
sed -i '' 's/"Hermes uses audio capture/"Meridian uses audio capture/' package.json
sed -i '' 's/"Hermes uses the microphone/"Meridian uses the microphone/' package.json
sed -i '' 's/"title": "Install Hermes"/"title": "Install Meridian"/' package.json
sed -i '' 's/"legalTrademarks": "Hermes"/"legalTrademarks": "Meridian AI"/' package.json
sed -i '' 's/"shortcutName": "Hermes"/"shortcutName": "Meridian"/' package.json
sed -i '' 's/"uninstallDisplayName": "Hermes"/"uninstallDisplayName": "Meridian"/' package.json
sed -i '' 's/"maintainer": "Nous Research/"maintainer": "Meridian AI/' package.json
sed -i '' 's/"synopsis": "Native desktop shell for Hermes Agent."/"synopsis": "Meridian AI Desktop — autonomous AI that grows with you."/' package.json

sed -i '' "s/const APP_NAME = 'Hermes'/const APP_NAME = 'Meridian'/" electron/main.cjs
sed -i '' "s/title: 'Hermes',/title: 'Meridian',/" electron/main.cjs
sed -i '' "s/message: 'Waiting to start Hermes backend'/message: 'Waiting to start Meridian backend'/g" electron/main.cjs
sed -i '' "s/message: 'Hermes runtime is ready'/message: 'Meridian runtime is ready'/g" electron/main.cjs
sed -i '' "s/message: 'Hermes backend is ready. Finalizing desktop startup'/message: 'Meridian backend is ready. Finalizing desktop startup'/g" electron/main.cjs
sed -i '' "s/'Hermes Agent not installed yet; bootstrap required'/'Meridian Agent not installed yet; bootstrap required'/" electron/main.cjs
sed -i '' "s/'Hermes install was cancelled.'/'Meridian install was cancelled.'/" electron/main.cjs
sed -i '' "s/'Handing off to the Hermes updater/'Handing off to the Meridian updater/g" electron/main.cjs
sed -i '' "s/'Updating Hermes (git/'Updating Meridian (git/g" electron/main.cjs
sed -i '' "s/Restart Hermes to retry/Restart Meridian to retry/g" electron/main.cjs
sed -i '' "s/Restart Hermes to load/Restart Meridian to load/g" electron/main.cjs
sed -i '' "s/'Resolving Hermes backend'/'Resolving Meridian backend'/g" electron/main.cjs
sed -i '' "s/'Resolving Hermes runtime'/'Resolving Meridian runtime'/g" electron/main.cjs
sed -i '' "s/'Starting Hermes backend via/'Starting Meridian backend via/g" electron/main.cjs
sed -i '' "s/'Waiting for Hermes backend to become ready'/'Waiting for Meridian backend to become ready'/g" electron/main.cjs
sed -i '' "s/title: payload?.title || 'Hermes'/title: payload?.title || 'Meridian'/g" electron/main.cjs
sed -i '' "s/title: 'Sign in to Hermes gateway'/title: 'Sign in to Meridian gateway'/g" electron/main.cjs
sed -i '' "s/env.TERM_PROGRAM = 'Hermes'/env.TERM_PROGRAM = 'Meridian'/g" electron/main.cjs
sed -i '' "s/Hermes backend failed to start/Meridian backend failed to start/g" electron/main.cjs
sed -i '' "s/Hermes backend exited before it became ready/Meridian backend exited before it became ready/g" electron/main.cjs
sed -i '' "s/'Hermes.app'/'Meridian.app'/g" electron/main.cjs
sed -i '' "s/Hermes.app/Meridian.app/g" electron/main.cjs

sed -i '' 's/<title>Hermes/<title>Meridian/' index.html

sed -i '' 's/"headline":"Hi, Hermes here"/"headline":"Hi, Meridian here"/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"hermes-chan is here! <3"/"headline":"meridian-chan is here! <3"/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"nyaaa~ hermes reporting"/"headline":"nyaaa~ meridian reporting"/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"Hermes at the helm, arrr"/"headline":"Meridian at the helm, arrr"/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"Hark! Hermes standeth ready"/"headline":"Hark! Meridian standeth ready"/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"Hermes. Code investigator."/"headline":"Meridian. Code investigator."/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"hermes-san is wistening"/"headline":"meridian-san is wistening"/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"HERMES ONLINE. LFG."/"headline":"MERIDIAN ONLINE. LFG."/g' src/components/chat/intro-copy.jsonl
sed -i '' 's/"headline":"Hermes Agent is ready."/"headline":"Meridian Agent is ready."/g' src/components/chat/intro-copy.jsonl

sed -i '' "s/const WORDMARK = 'HERMES AGENT'/const WORDMARK = 'MERIDIAN'/" src/components/chat/intro.tsx

sed -i '' "s/ProductName: 'Hermes'/ProductName: 'Meridian'/g" scripts/set-exe-identity.cjs
sed -i '' "s/FileDescription: 'Hermes'/FileDescription: 'Meridian'/g" scripts/set-exe-identity.cjs
sed -i '' "s/CompanyName: 'Nous Research'/CompanyName: 'Meridian AI'/g" scripts/set-exe-identity.cjs
sed -i '' "s/LegalCopyright: 'Copyright (c) 2026 Nous Research'/LegalCopyright: 'Copyright (c) 2026 Meridian AI'/g" scripts/set-exe-identity.cjs

sed -i '' "s/message: 'Starting Hermes Desktop…'/message: 'Starting Meridian Desktop…'/g" src/store/boot.ts
sed -i '' "s/message = 'Hermes Desktop is ready'/message = 'Meridian Desktop is ready'/g" src/store/boot.ts

sed -i '' "s/>Hermes Desktop</>Meridian Desktop</g" src/app/settings/about-settings.tsx
sed -i '' 's/"Hermes checks for updates/"Meridian checks for updates/g' src/app/settings/about-settings.tsx

sed -i '' "s/\"Hermes couldn't start\"/\"Meridian couldn't start\"/g" src/components/boot-failure-overlay.tsx
sed -i '' 's/"Hermes is loading a response"/"Meridian is loading a response"/g' src/components/assistant-ui/thread.tsx

# i18n — all display strings (replace all Hermes with Meridian — these are all translations)
sed -i '' 's/Hermes/Meridian/g' src/i18n/en.ts
sed -i '' 's/Hermes/Meridian/g' src/i18n/zh.ts

# Remaining component display strings
sed -i '' "s/'Hermes gateway unavailable'/'Meridian gateway unavailable'/g" src/app/gateway/hooks/use-gateway-request.ts
sed -i '' "s/'Hermes gateway unavailable'/'Meridian gateway unavailable'/g" src/app/chat/index.tsx
sed -i '' "s/'Hermes Desktop'/'Meridian Desktop'/g" src/app/settings/config-settings.tsx
sed -i '' "s/'Hermes inference gateway status'/'Meridian inference gateway status'/g" src/app/shell/hooks/use-statusbar-items.tsx
sed -i '' "s/'Hermes is restarting...'/'Meridian is restarting...'/g" src/app/chat/right-rail/preview-pane.tsx
sed -i '' "s/'Hermes could not restart the server.'/'Meridian could not restart the server.'/g" src/app/chat/right-rail/preview-pane.tsx
sed -i '' "s/Updating Hermes…/Updating Meridian…/g" src/app/updates-overlay.tsx
sed -i '' "s/This version of Hermes/This version of Meridian/g" src/app/updates-overlay.tsx

echo "=== Done ==="
