# Sorts keys from multiple text files into one, removing duplicates
# ------
# When using SteamBulkActivator - https://github.com/Ezzpify/SteamBulkActivator
# You end up with `Results *.txt` files with a ton of Steam keys
# These files are newline-seperated lists, with category names inbetween, such as `Success`, `Already registered`, `Not attempted`, `Too many activation attempts`,etc.
# These files should be sorted by you, and deleted over time.
# I never did this.
# 
# Since 2018 I've collected 100 text files full of keys in each category.
#
# This script runs through these files, removes duplicates and works keys up the list until `Success` or `Already registered` (final states)
# This way you know out of all the keys which still could be registered.
# Output will be stored in a new results folder (one txt file per category)
# as well as printed in the console.
#
# This script may not be useful to your exact use case, as this is rather niche, but it's code I made to make my life simpler, so hopefully you find some use from it.
# ------
# Created 2025/05/03

# Created by Wesley Pyburn (TroubleChute)
# https://github.com/TcNoco/TcNo-Random-Scripts

import os
import re
from collections import defaultdict

FINAL_STATES = {"Success", "Already registered"}
STATE_ORDER = [
    "Duplicate activation code",
    "Not attempted",
    "Too many activation attempts. Try again later.",
    "Does not own required app to register this key",
    *FINAL_STATES,
]

def parse_files():
    categorized_keys = defaultdict(set)
    dynamic_state_order = set(STATE_ORDER)  # Start with hardcoded categories

    # Get all "Results *.txt" files in the current directory
    for filename in os.listdir("."):
        if filename.startswith("Results ") and filename.endswith(".txt"):
            with open(filename, "r", encoding="utf-8") as file:
                current_category = None
                for line in file:
                    line = line.strip()
                    if not line:
                        continue
                    # Is line a category?
                    if not re.match(r"^[0-9A-Za-z]{5}-[0-9A-Za-z]{5}-[0-9A-Za-z]{5}$", line):
                        current_category = line
                        dynamic_state_order.add(current_category)
                    elif current_category:
                        # Add the key to the current category
                        categorized_keys[current_category].add(line)

    resolved_keys = defaultdict(set)
    for category in dynamic_state_order:
        if category in categorized_keys:
            for key in categorized_keys[category]:
                # Only add the key if it hasn't already been finalized
                if not any(key in resolved_keys[final] for final in FINAL_STATES):
                    resolved_keys[category].add(key)

    return resolved_keys

def save_results(categorized_keys):
    os.makedirs("results", exist_ok=True)

    for category, keys in categorized_keys.items():
        with open(f"results/{category}.txt", "w", encoding="utf-8") as file:
            for key in sorted(keys):
                file.write(f"{key.strip()}\n")

def main():
    categorized_keys = parse_files()
    save_results(categorized_keys)
    for category, keys in categorized_keys.items():
        print(f"\n\n{category}:")
        for key in sorted(keys):
            print(f"  {key.strip()}")

if __name__ == "__main__":
    main()
