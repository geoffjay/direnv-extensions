# `direnv` extensions

This directory contains extensions to direnv that are helpers for working with
personal projects.

## `asdf_install`

This extension will install the version of asdf specified in the `.tool-versions`
file in the current directory.

## `use_dotenv`

This extension will export the contents of a `.env` file in the current
directory.

## `use_vulkan`

This extension will set the `VULKAN_SDK` environment variable, as well as some
others that are required for Vulkan development.
