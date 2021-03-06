#!/usr/bin/env bash
#
# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This script runs the Linux Make build.
#
# Having this file in this location, with this name, enables the current
# experimental 'flutter build' support for desktop.

# Arguments
readonly flutter_root="$1"
readonly flutter_config="$2"

# Directories
readonly base_dir="$(dirname "$0")"

make -C "$base_dir" BUILD="${flutter_config}"
