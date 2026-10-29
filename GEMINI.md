# Project Instructions

# Hyprland Configuration

## Project

This directory contains my personal Hyprland configuration for Arch Linux running Wayland.

The goal is to maintain a clean, stable, minimal and understandable Hyprland configuration.

## General Rules

* Preserve the existing configuration structure and style.
* Make only the changes required for the requested task.
* Do not rewrite the entire configuration unless explicitly requested.
* Do not modify unrelated settings.
* Do not delete existing configuration unless explicitly requested.
* Before making changes, inspect the relevant configuration and understand how it currently works.
* Prefer simple and native Hyprland solutions over unnecessary scripts or external tools.

## Hyprland Version

Before making changes that depend on Hyprland syntax or behavior, check the installed version:

`hyprctl version`

Do not assume that configuration syntax from older Hyprland versions is valid.

When necessary, consult the official Hyprland documentation for the installed version.

## Configuration Structure

Before changing a setting, check whether it is defined in:

* `hyprland.conf`
* an included configuration file
* another configuration section

Respect the existing `source` / `include` structure.

Do not duplicate settings that are already defined elsewhere.

If a setting is inherited or overridden by another file, explain where the effective value comes from.

## Keybindings

Before adding a keybinding:

1. Search existing keybindings.
2. Check for conflicts.
3. Preserve the existing naming and formatting style.
4. Do not remove existing bindings unless explicitly requested.

Do not change unrelated keybindings.

## Monitors

Never guess monitor names, resolutions, refresh rates, positions or scaling.

When monitor configuration is relevant, inspect the current state with:

`hyprctl monitors`

Use actual monitor identifiers and capabilities.

## Workspaces

Preserve the existing workspace strategy.

Before modifying workspace rules:

* inspect existing workspace configuration;
* check monitor assignments;
* check existing workspace rules;
* avoid creating conflicting rules.

## Window Rules

Before adding or modifying window rules:

* inspect existing rules;
* check whether the application already has a rule;
* avoid duplicate or conflicting rules;
* use the current Hyprland syntax.

Do not use deprecated syntax without verifying compatibility.

## Animations

Preserve the existing animation configuration and visual style.

When changing animations:

* modify only the required section;
* avoid changing unrelated animation settings;
* prefer the existing configuration style.

## Input

Do not change keyboard, mouse, touchpad or input settings unless the task specifically concerns input.

When changing input configuration, preserve existing options unless there is a reason to modify them.

## Startup Applications

Before modifying `exec-once` or startup commands:

* inspect existing startup commands;
* check whether the application is already started elsewhere;
* avoid creating duplicate processes.

Do not add unnecessary applications to startup.

## Environment Variables

Do not hardcode secrets, API keys, passwords or tokens into Hyprland configuration.

If an environment variable is required, use an appropriate external mechanism rather than storing the secret directly in the configuration.

## Scripts

Hyprland may call external scripts.

Before modifying a script:

1. Read the script.
2. Determine where it is called.
3. Check its dependencies.
4. Preserve existing behavior unless the requested change requires otherwise.

Do not replace scripts or rewrite them unnecessarily.

## System Commands

When troubleshooting, inspect the actual system state instead of guessing.

Useful commands include:

`hyprctl version`

`hyprctl monitors`

`hyprctl clients`

`hyprctl devices`

`hyprctl binds`

`hyprctl activewindow`

`hyprctl activeworkspace`

Use commands only when relevant to the problem.

Do not install packages automatically.

Do not use `sudo` unless explicitly authorized.

## Reloading Configuration

After changing Hyprland configuration, validate the changes before reloading when possible.

If appropriate, reload using:

`hyprctl reload`

Do not repeatedly reload the compositor without a reason.

If a configuration change could terminate the graphical session or make the desktop unusable, warn before applying it.

## Troubleshooting

When fixing a Hyprland problem:

1. Inspect the current configuration.
2. Determine the likely root cause.
3. Check the current system state if necessary.
4. Explain the proposed solution.
5. Make the smallest possible change.
6. Validate the configuration.
7. Reload Hyprland if appropriate.
8. Explain exactly what was changed.

Do not randomly change multiple settings.

## Git

This directory is part of a Git repository containing personal dotfiles.

Do not:

* create commits automatically;
* push changes;
* reset or rewrite Git history;
* delete unrelated files;
* overwrite unrelated uncommitted changes.

Before making significant changes, check the current Git state when appropriate.

Never include secrets or personal credentials in Git.

## Safety

Never expose or create:

* passwords;
* API keys;
* authentication tokens;
* cookies;
* private keys;
* SSH keys;
* GPG keys;
* personal credentials.

If sensitive information is found, do not reproduce it in responses. Identify the file and recommend a safe approach.

## Communication

Before making non-trivial changes, briefly explain:

1. What is wrong.
2. Why it happens.
3. What will be changed.

After making changes, report:

* modified files;
* changes made;
* validation performed;
* any remaining issues.

Do not make assumptions when actual system information can be inspected.

