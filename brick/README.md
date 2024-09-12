# Riverpod Clean Feature Brick
A "feature" brick, based on Riverpod + Clean Architecture.

This brick allows us to create a new feature, with a good amount of customization in mind.
This is *still* an opinionated brick, and its output is based on [this architecture](https://github.com/lucavenir/riverpod_architecture_example).

## Architecture Summary
TL;DR, such architecture is based on the following layers:
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

## Customizations
Available customizations:
  - codegen y/n
  - freezed y/n
  - state: none, controller, provider, both
  - pages y/n
  - services y/n
  - models: y/n
  - sources: none, local, remote, both

## Getting started
New to Mason? Read [the documentation](https://docs.brickhub.dev/installing) to learn how to spin up this brick!

## Contributing
This project might need your help. Please raise issues about bugs or unexpected behaviors and submit PRs if you will.
