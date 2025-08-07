#!/usr/bin/env bash

# Assign VULKAN_SDK environment variable based on the highest version
# number subdirectory of $HOME/.local/lib/VulkanSDK.
#
# If VULKAN_SDK is already set, this function does nothing.
# If no Vulkan SDK is found, this function prints an error message and
# returns 1.
use_vulkan() {
  if [[ -z "$VULKAN_SDK" ]]; then
    # TODO: support system-wide installations
    VULKAN_SDK="$(find $HOME/.local/lib/VulkanSDK/ -maxdepth 1 -type d -name "*$1*" | sort -r | head -n1)"
    if [[ "$OSTYPE" == "darwin"* ]]; then
      VULKAN_SDK="${VULKAN_SDK}/macOS"
    elif [[ "$OSTYPE" == "linux-gnu" ]]; then
      VULKAN_SDK="${VULKAN_SDK}/Linux"
    fi
  fi

  if [[ -z "$VULKAN_SDK" ]]; then
    echo "Vulkan SDK not found"
    return 1
  fi

  export VULKAN_SDK
  export PATH="$VULKAN_SDK/bin:$PATH"

  if [[ "$OSTYPE" == "darwin"* ]]; then
    export DYLD_FALLBACK_LIBRARY_PATH="$VULKAN_SDK/lib"
    export VK_ICD_FILENAMES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json"
    export VK_LAYER_PATH="$VULKAN_SDK/share/vulkan/explicit_layer.d"
  elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    export LD_LIBRARY_PATH="$VULKAN_SDK/lib"
    export VK_ICD_FILENAMES="$VULKAN_SDK/etc/vulkan/icd.d/MoltenVK_icd.json"
    export VK_LAYER_PATH="$VULKAN_SDK/etc/vulkan/explicit_layer.d"
  fi
}
