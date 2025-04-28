# Riverpod Clean Feature Brick
A "feature" brick, based on Riverpod + Clean Architecture.

This brick allows us to create a new feature, with a good amount of customization in mind.
This is *still* an opinionated brick, and its output is based on [this architecture](https://github.com/lucavenir/riverpod_architecture_example).

## Getting started
New to Mason? Read [the documentation](https://docs.brickhub.dev/installing) to learn how to spin up this brick!

## Install

  mason add --global riverpod_clean_feature --git-url https://github.com/lucavenir/riverpod_clean_feature_brick --git-path brick

## Important Note
This brick works best with [this other brick](https://github.com/lucavenir/riverpod_core_brick), that sets up the architecture mentioned above. It also prepares the ground for you to set up flavoring, code generation, layering, etc.

Check out [riverpod_clean_feature](https://github.com/lucavenir/riverpod_clean_feature_brick), now available on brickhub.

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
  - use cases y/n
  - models: y/n
  - sources: none, local, remote, both

## Contributing
This project might need your help. Please raise issues about bugs or unexpected behaviors and submit PRs if you will.
