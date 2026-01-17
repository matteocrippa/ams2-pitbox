# 🧰 AMS2 PitBox

Install **Automobilista 2** mods (and skins/liveries) on **Steam Deck / Linux** from an archive. 🏎️💨

## 🧠 What it does (in human words)

1) 📦 Unpacks your archive (`.zip`, `.rar`, `.7z`, …)
2) 🔎 Finds the AMS2 folders inside
3) 📂 Copies files into your `Automobilista 2/` game folder
4) ✅ Done. (No extra tools, no fancy stuff.)

You can also skip step 1 entirely: if you already extracted the archive manually,
just pass the extracted folder path instead of the archive.

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

### 🧳 “Container” packs (archive of many archives)
Some big packs ship as a single `.7z` containing many smaller mod archives next to each other.

If PitBox doesn’t find an `Automobilista 2/` / `Vehicles/` / `UserData/` overlay after extracting,
it will look for nested archives (`.7z`, `.zip`, `.rar`), extract each one, and install them one by one.

## 🚀 Quick start (noob mode)

1) 📥 Put your archive in `~/Downloads` (example: `SomeMod.zip`)
2) 🖥️ Open a terminal (Steam Deck Desktop Mode → **Konsole**)
3) ▶️ Run:

- `chmod +x ./ams2-pitbox/pitbox`
- `./ams2-pitbox/pitbox ~/Downloads/SomeMod.zip`

If you have multiple Steam libraries (internal + SD), PitBox will ask which one to use. 🗂️

If auto-detection fails (or you’re not on Steam Deck/Linux), pass the game folder manually:

- `./ams2-pitbox/pitbox --game-dir "/path/to/steamapps/common/Automobilista 2" ~/Downloads/SomeMod.zip`

## 📁 Install from an extracted folder (manual unrar / manual extract)

If you already extracted an archive (for example a `.rar`), just pass the extracted folder:

- `./ams2-pitbox/pitbox --dry-run /path/to/extracted_mod_folder`

Same `--game-dir` rule applies if auto-detection can’t find AMS2:

- `./ams2-pitbox/pitbox --dry-run --game-dir "/path/to/Automobilista 2" /path/to/extracted_mod_folder`

## 🧪 Dry-run (recommended)

See what would happen without copying files:

- `./ams2-pitbox/pitbox --dry-run ~/Downloads/SomeMod.zip`

## 🧰 Requirements

- 🐍 Python 3
- 🗜️ For `.7z` / `.rar`: `7z` or `7zz` (7zip / p7zip)

If you don’t want to install 7zip, you can always extract the archive manually and use the “extracted folder” mode.

## 🧯 Undo / Recovery

- 🧼 Easiest: use **Steam → Verify integrity of game files**
- 🔁 Or just remove the modded files and verify again

## 🧯 Troubleshooting

- 😵 “Permission denied” → run `chmod +x ./ams2-pitbox/pitbox`
- 🗜️ “7z/7zz not found” → install 7zip/p7zip (needed for `.7z` / `.rar` unless you extract manually).
- 🔎 “Could not auto-detect Automobilista 2” → point it manually:
	- `./ams2-pitbox/pitbox --game-dir "/path/to/steamapps/common/Automobilista 2" ~/Downloads/SomeMod.zip`

## ⚠️ Small print

- Use at your own risk. Mods can overwrite game files.
- Archives are not standardized; some mods may fail to install.
