#!/bin/bash -

projectBootstrapArtText="$(base64 -D <<< "ICAgX19fICAgICBfX18gICAgX19fX18gICBfICAgXyAgICAgX19fICAKICAvIF9ffCAgIHwgX198ICB8XyAgIF98IHwgfCB8IHwgICB8IF8gXCAKICBcX18gXCAgIHwgX3wgICAgIHwgfCAgIHwgfF98IHwgICB8ICBfLyAKICB8X19fLyAgIHxfX198ICAgX3xffF8gICBcX19fLyAgIF98X3xfICAKX3wiIiIiInxffCIiIiIifF98IiIiIiJ8X3wiIiIiInxffCAiIiIgfCAKImAtMC0wLSciYC0wLTAtJyJgLTAtMC0nImAtMC0wLSciYC0wLTAtJyA=")"
echo "$projectBootstrapArtText"
echo ""
echo "Bootstrapping Stealth Surfer VNP project."
# latest setup scripts are usually on development branch
# git checkout develop

# -------------------- Native libraries -----------------------
# making sure Homebrew package manager is installed
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install cocoapods bartycrouch fastlane rustup-init automake autoconf libtool gettext swiftlint

# Rust setup
rustup-init -y
rustup target add aarch64-apple-ios aarch64-apple-ios-sim x86_64-apple-ios aarch64-apple-darwin x86_64-apple-darwin
cargo install cbindgen

git submodule update --init --recursive
pod update
open Orbot.xcworkspace