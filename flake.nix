{
  description = "Kotlin simple application flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem ( system:
    let
      pkgs = import nixpkgs { inherit system; config.android_sdk.accept_license = true; config.allowUnfree = true; };
      core-pkgs = with pkgs; [
        gradle # building
        flutter
      ];
      android-sdk = pkgs.androidenv.androidPkgs.androidsdk;
    in {
      devShells = rec {
        minimal = pkgs.mkShell {
          name = "flutter-minimal";
          buildInputs = core-pkgs;
          GRADLE_USER_HOME="./gradle-cache";
        };
        with-android-sdk = pkgs.mkShell {
          name = "flutter-android-sdk";
          buildInputs = core-pkgs ++ [android-sdk];
          GRADLE_USER_HOME="./gradle-cache";
          ANDROID_HOME = "${android-sdk}/libexec/android-sdk";
        };
        # with-idea = pkgs.mkShell {
        #   name = "kotlin-with-idea";
        #   buildInputs = core-pkgs ++ [pkgs.jetbrains.idea-community];
        #   GRADLE_USER_HOME="./gradle-cache";
        # };
        default = minimal;
      };

      packages.default = pkgs.flutter.buildFlutterApplication {
        pname = "calculator";
        version = "0.0.1";
        src = ./.;
        # pubspecLock = pkgs.lib.importYAML ./pubspec.lock;
        autoPubspecLock=./pubspec.lock;
      };

      # apps = {
      #   run-android = {
      #     type = "app";
      #     program = androidenv.emulateApp {
      #       name = "emulate-Calculator";
      #       platformVersion = "28";
      #       abiVersion = "x86"; # armeabi-v7a, mips, x86_64
      #       systemImageType = "google_apis_playstore";
      #     };
      #   };
      # };

    });
}
