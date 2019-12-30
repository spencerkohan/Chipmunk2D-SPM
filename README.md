# Chipmunk2D for Swift Package Manager

This repository contains the excellent Chipmunk 2D by Howling Moon Software repackaged as a Swift package for use with the Swift Package Manager.

More information about Chipmunk can be found here:

- [Home page](https://chipmunk-physics.net/)
- [Documentation](https://chipmunk-physics.net/documentation.php)
- [Main Chipmunk2D github repository](https://github.com/slembcke/Chipmunk2D), including additional demos

## Usage

This package can be included in a SPM-managed project like any other Swift package:

    // Package.swift: 
    dependencies: [
         .package(
             url: "https://github.com/spencerkohan/Chipmunk2D-SPM", 
             from: "7.0.3"),
    ],
    
This repository will track the same version numbers as the main Chipmunk repository.

## Demo

This repository also includes a demo executable at `Sources/Demo/main.swift`.  This is a Swift implementation of the *Hello Chipmunk* example provided in the [Chipmunk manual](https://chipmunk-physics.net/release/ChipmunkLatest-Docs/).
