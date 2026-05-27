#!/usr/bin/env bash
cd "$(dirname "$0")"
python3 /root/MealTracker/meal_tracker.py generate
cp /root/MealTracker/index.html index.html
cp /root/MealTracker/meals.json meals.json
git add index.html meals.json
git commit -m "update meals - $(date '+%b %d %I:%M%p')"
git push origin main
