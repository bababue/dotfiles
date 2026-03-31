#!/bin/sh

sudo pacman -S --noconfirm --needed tailscale

sudo tailscale login

sudo tailscale up
sudo systemctl enable tailscaled.service


