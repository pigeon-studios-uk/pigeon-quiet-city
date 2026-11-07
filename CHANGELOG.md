# Changelog

All notable changes to Pigeon Quiet City are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-07

First release.

### Highlights

- No fake sirens in the distance
- No police scanner voice
- No wanted level or flight music
- Turn off any of GTA's fixed sound sources

### Added

- GTA's fake distant sirens turned off, while real sirens on vehicles play as normal.
- The police scanner voice, wanted music and flight music turned off with GTA's audio flags.
- `Config.StaticEmitters` to turn off GTA's fixed sound sources by name, such as music in clubs.
- Every setting applied again every `Config.ReapplySeconds`, and put back when the resource stops.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-quiet-city/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-quiet-city/releases/tag/v1.0.0
