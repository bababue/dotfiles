#!/bin/sh

SRC="$HOME/Downloads/VitalInstaller.zip"
DEST="$HOME/.cache/yay/vital-synth-bin/src/VitalInstaller.zip"

if [ -f "$SRC" ]; then
    echo "✓ Datei VitalInstaller.zip gefunden: $SRC"
    
    # Zielverzeichnis sicherstellen
    mkdir -p "$(dirname "$DEST")"
    
    # Datei verschieben
    echo "→ Verschiebe Datei nach $DEST"
    mv "$SRC" "$DEST"

    yay -S --noconfirm --needed vital-synth-clap-bin
else
    echo "✗ Vital Synth konnte nicht installiert werden: ~/Downloads/VitalInstaller.zip nicht gefunden. Bitte unter https://account.vital.audio/ herunterladen"
fi



yay -S --noconfirm --needed reaper 
