# Riverpod Clean Feature Brick
A "feature" brick, based on Riverpod + Clean Architecture in mind, with proper usage, which means:
  - no dogmas
  - creates only what's needed
  - no unnecessary code
  - no unnecessary layers of indirection

This brick allows us to create a new feature, and its output is based on [this architecture](https://github.com/lucavenir/riverpod_architecture_example).

## Architecture Summary
TL;DR, clean architecture is based on the following layers:
- Presentation layer
  - pages
  - widgets
  - providers
  - controllers
  - views
- Domain layer
  - entities
  - services (or "use cases")
  - repositories interfaces
  - adapters
- Data layer
  - repositories
  - sources
  - models
  - adapters
  - etc.

We strongly simplify that, but still have the same mental/conceptual mapping.
Indeed, this brick won't generate any *data* layer for you, as it's meant to stay... *somewhere else*.
Check the architecture example above for more information.

## Customizations
Available customizations:
  - codegen y/n
  - freezed y/n
  - state: none, controller, provider, both
  - pages y/n
  - models: y/n

## Getting started
New to Mason? Read [the documentation](https://docs.brickhub.dev/installing) to learn how to spin up this brick!

## Contributing
This project might need your help. Please raise issues about bugs or unexpected behaviors and submit PRs if you will.
