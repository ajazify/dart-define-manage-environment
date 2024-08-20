# Dart Define for EnvVariable Management 🌐

![Flutter](https://img.shields.io/badge/Flutter-Env--Management-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Version](https://img.shields.io/badge/version-1.0.0-brightgreen.svg)

## Overview

Managing environment variables is a crucial aspect of building scalable and secure applications. Environment variables allow you to customize your app's behavior based on different environments such as development, staging, and production. This guide will walk you through the process of managing environment variables in a Flutter project using Dart's `--dart-define` feature.

## Why Use Environment Variables? 🤔

Environment variables provide several key benefits:

- **Security**: Sensitive data, such as API keys, can be stored securely and kept out of your source code.
- **Flexibility**: Easily switch between different configurations (e.g., dev, staging, prod) without altering the codebase.
- **Scalability**: As your project grows, managing different environments becomes crucial for continuous integration and deployment.

## Adding Different Environments 🗂️

To manage different environments, you'll use JSON files to define the configurations for each environment. These files will be placed in an `env` directory within your project.

### Step 1: Create the `env` Directory

Create an `env` directory in the root of your project and add JSON files for each environment.

#### `dev.json`
```json
{
    "baseUrl" : "https://devcaller.com/example/v1",
    "apiKey" : "DEV8203G3DECOR234S452FSBGRSDFSFDRGTDSEREFDGFHFGDFGd"
}

