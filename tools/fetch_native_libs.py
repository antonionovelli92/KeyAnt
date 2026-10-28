#!/usr/bin/env python3
"""Restore the version-pinned native prebuilts shipped with the source release."""
from pathlib import Path
import hashlib
import io
import json
import urllib.request
import zipfile

root = Path(__file__).resolve().parents[1]
spec = json.loads((root / 'tools/native-prebuilts.json').read_text())
def digest(data):
    return hashlib.sha256(data).hexdigest()

if all((root / name).is_file() and digest((root / name).read_bytes()) == sha
       for name, sha in spec['files'].items()):
    print('Native libraries already verified.')
else:
    url = ('https://github.com/antonionovelli92/KeyAnt/releases/download/'
           + spec['release'] + '/' + spec['asset'])
    with urllib.request.urlopen(url, timeout=120) as response:
        data = response.read()
    if digest(data) != spec['sha256']:
        raise SystemExit('Native archive checksum mismatch; nothing installed.')
    with zipfile.ZipFile(io.BytesIO(data)) as archive:
        payloads = {name: archive.read(name) for name in spec['files']}
    if any(digest(data) != spec['files'][name] for name, data in payloads.items()):
        raise SystemExit('Native library checksum mismatch; nothing installed.')
    for name, data in payloads.items():
        path = root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        temporary = path.with_suffix('.download')
        temporary.write_bytes(data)
        temporary.replace(path)
    print('Native libraries restored and verified.')
