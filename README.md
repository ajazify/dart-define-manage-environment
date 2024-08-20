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
```

### Step 2: Running the App from the Terminal 🖥️

To run your app using a specific environment configuration from the terminal, use the --dart-define-from-file option.

#### `bash`
```bash
flutter run --dart-define-from-file=env/dev.json
```

### Step 3: Debugging with VS Code 🐞

To streamline the process of running different environments while debugging in VS Code, configure your .vscode/launch.json file.
Configure `launch.json`

To Create `launch.json` > Go to `Run and Debug` pannel or `ctrl+shift+d` >> click `create new launch.json`

Update your `launch` file with respect to your `env` , Here in example `dev.json`
#### `launch.json`

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Dev Env",
      "cwd": "dart_define_to_manage_env",
      "request": "launch",
      "type": "dart",
      "args": [
        "--dart-define-from-file=env/dev.json"
      ]
    }
  ]
}
```

