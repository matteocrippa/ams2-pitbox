# 🧰 AMS2 PitBox

Install **Automobilista 2** mods (and skins/liveries) on **Steam Deck / Linux** from an archive. 🏎️💨

## 🧠 What it does (in human words)

1) 📦 Unpacks your archive (`.zip`, `.rar`, `.7z`, …)
2) 🔎 Finds the AMS2 folders inside
3) 📂 Copies files into your `Automobilista 2/` game folder
4) 💾 If `rsync` exists, it also keeps backups of overwritten files

## ✅ What archives work?

PitBox understands two common layouts:

### 🧩 Full mod archives
These contain one of:
- `Automobilista 2/` (best)
- `Vehicles/` or `UserData/`

### 🎨 Skin-only (livery) archives (even “flat” ones)
These may contain **only**:
- a `USER_OVERRIDES` `.xml`
- plus `.dds` texture files/folders

PitBox will wrap that into the right path under:
`Vehicles/Textures/CustomLiveries/Overrides/<vehicle>/...`

## 🚀 Quick start (noob mode)

1) 📥 Put your archive in `~/Downloads` (example: `SomeMod.zip`)
2) 🖥️ Open a terminal (Steam Deck Desktop Mode → **Konsole**)
3) ▶️ Run:

- `chmod +x ./ams2-pitbox/pitbox`
- `./ams2-pitbox/pitbox ~/Downloads/SomeMod.zip`

If you have multiple Steam libraries (internal + SD), PitBox will ask which one to use. 🗂️

## 🧪 Dry-run (recommended)

See what would happen without copying files:

- `./ams2-pitbox/pitbox --dry-run ~/Downloads/SomeMod.zip`

## 🧰 Requirements

- 🐍 Python 3
- 🗜️ For `.rar` / `.7z`: `7z` or `7zz` (7zip / p7zip)
- 💾 Optional: `rsync` (better install + backups)

## 💾 Backups

If `rsync` is available, overwritten files are backed up to:

- `~/.local/share/ams2-pitbox/backups/<timestamp>/`

## 🧯 Troubleshooting

- 😵 “Permission denied” → run `chmod +x ./ams2-pitbox/pitbox`
- 🗜️ “7z/7zz not found” → install 7zip/p7zip (needed for `.rar`/`.7z`)
- 🔎 “Could not auto-detect Automobilista 2” → point it manually:
	- `./ams2-pitbox/pitbox --game-dir "/path/to/steamapps/common/Automobilista 2" ~/Downloads/SomeMod.zip`

## ⚠️ Small print

- Use at your own risk. Mods can overwrite game files.
- Archives are not standardized; some mods may fail to install.
