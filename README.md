# 🧰 AMS2 PitBox

Install **Automobilista 2** mods on **Steam Deck / Linux** from a mod archive.

## ⚠️ Important

- **Use at your own risk.** No warranty, no guarantees.
- Mods can **overwrite game files**.
- Mod archives are not standardized; some mods may **fail to install**.

## ✅ Quick start (3 steps)

1) Put your mod archive in `~/Downloads` (example: `SomeMod.zip`)

2) Open a terminal (Steam Deck Desktop Mode → **Konsole**)

3) Run:

- `chmod +x ./ams2-pitbox/pitbox`
- `./ams2-pitbox/pitbox ~/Downloads/SomeMod.zip`

If you have more than one Steam library (internal + SD), PitBox will ask which one to use.

## 🔎 Dry-run (recommended)

- `./ams2-pitbox/pitbox --dry-run ~/Downloads/SomeMod.zip`

## 💾 Backups

If `rsync` is available, overwritten files are backed up to:

- `~/.local/share/ams2-pitbox/backups/<timestamp>/`

## 🧯 Troubleshooting

- “Permission denied”: run `chmod +x ./ams2-pitbox/pitbox`
- “7z/7zz not found”: install 7zip/p7zip (needed for `.7z`/`.rar`)
- “Could not auto-detect Automobilista 2”: run with `--game-dir` and point to your game folder
