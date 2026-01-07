#!/usr/bin/env python3
"""Deprecated shim.

KISS version: the main executable is now "ams2-pitbox/pitbox".
This file stays only so older links/commands keep working.
"""

from __future__ import annotations

import os
import sys
from pathlib import Path


def main() -> int:
    tool = Path(__file__).resolve().parent / "pitbox"
    if tool.is_file():
        os.execv(sys.executable, [sys.executable, str(tool), *sys.argv[1:]])

    print("[ams2-pitbox] ERROR: expected 'pitbox' entrypoint next to pitbox.py")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
