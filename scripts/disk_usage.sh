#!/bin/bash
TARGET_DIR=${1:-.}
du -sh "$TARGET_DIR"/*
