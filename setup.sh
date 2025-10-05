#!/usr/bin/env bash
set -e
TARGET_DIR="/sdcard/Download/SelfBot"
mkdir -p "$TARGET_DIR"
BASE_RAW="https://raw.githubusercontent.com/YutaDev123/SelfBot-Updated/main"
curl -fsSL "$BASE_RAW/obf-paymentupdated.py" -o "$TARGET_DIR/obf-paymentupdated.py"
curl -fsSL "$BASE_RAW/launcher.py" -o "$TARGET_DIR/launcher.py"
curl -fsSL "$BASE_RAW/requirements.txt" -o "$TARGET_DIR/requirements.txt"
cd "$TARGET_DIR"
pip install -r requirements.txt || pip3 install -r requirements.txt
echo "cd $TARGET_DIR && python launcher.py"
