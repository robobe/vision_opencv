#!/bin/bash
set -e
# remove current override_dh_shlibdeps
sed -i '/^override_dh_shlibdeps:/,/^$/d' /workspace/cv_bridge/debian/rules

 

cat <<'EOF' >> debian/rules

override_dh_shlibdeps:
	dh_shlibdeps --dpkg-shlibdeps-params=--ignore-missing-info


override_dh_builddeb:
	dh_builddeb --destdir=/workspace/debs
EOF

echo "[✅] Successfully patched debian/rules"
