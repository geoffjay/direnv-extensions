# `direnv` extensions

This repository contains extensions to direnv that are helpers for working with
personal projects.

## Setup

```bash
git clone https://github.com/geoffjay/direnv-extensions.git ~/.config/direnv
```

## Usage

To install these extensions, add any of the following to your `.envrc` file:

```bash
use asdf
use dotenv
use export_alias foo "echo foo"
use flutter
use pyenv
use rbenv
use vulkan
```

## `lib/asdf.sh`

### `use_asdf`

This extension will ensure that the `asdf` shims are on the path.

### `asdf_install`

This extension will install the version of asdf specified in the `.tool-versions`
file in the current directory.

## `lib/dotenv.sh`

### `use_dotenv`

This extension will export the contents of a `.env` file in the current
directory.

## `lib/export-alias.sh`

### `use_export_alias`

This extension will export the contents of an `export-alias` function in the current
directory. This is useful for setting up aliases for commands that are not
installed on the system.

## `lib/flutter.sh`

### `use_flutter`

This extension will set the `FLUTTER_ROOT` environment variable, as well as some
others that are required for Flutter development.

## `lib/pyenv.sh`

### `use_pyenv`

This extension will set the `PYENV_ROOT` environment variable, as well as some
others that are required for Python development.

## `lib/rbenv.sh`

### `use_rbenv`

This extension will set the `RBENV_ROOT` environment variable, as well as some
others that are required for Ruby development.

## `lib/vulkan.sh`

### `use_vulkan`

This extension will set the `VULKAN_SDK` environment variable, as well as some
others that are required for Vulkan development.
