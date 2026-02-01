# Contributing to docker-openconnect-ldap

Thank you for your interest in contributing to docker-openconnect-ldap! This document provides guidelines and instructions for contributing.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Development Setup](#development-setup)
- [Pull Request Process](#pull-request-process)
- [Coding Standards](#coding-standards)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Features](#suggesting-features)

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for everyone.

## How to Contribute

### Types of Contributions

- **Bug fixes**: Fix issues reported in the issue tracker
- **Features**: Implement new features or enhancements
- **Documentation**: Improve or translate documentation
- **Testing**: Add or improve tests
- **Code review**: Review pull requests from other contributors

## Development Setup

### Prerequisites

- Docker 20.10+
- Docker Compose v2+
- Git

### Local Development

1. Fork the repository

2. Clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/docker-openconnect-ldap.git
   cd docker-openconnect-ldap
   ```

3. Create a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```

4. Build the image locally:
   ```bash
   docker build -t docker-openconnect-ldap:dev .
   ```

5. Test your changes:
   ```bash
   docker-compose -f example/docker-compose.yaml up -d
   ```

## Pull Request Process

1. **Update documentation**: If your changes affect usage, update the README and other relevant docs.

2. **Test your changes**: Ensure the container builds and runs correctly.

3. **Write clear commit messages**: Use descriptive commit messages that explain what and why.

4. **Create the PR**: Submit your pull request with:
   - A clear title describing the change
   - A description of what was changed and why
   - Reference to any related issues

5. **Address feedback**: Respond to review comments and make requested changes.

### Commit Message Format

```
type: short description

Longer description if needed.

Fixes #123
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

## Coding Standards

### Dockerfile

- Use multi-stage builds when appropriate
- Minimize the number of layers
- Clean up package manager caches
- Use specific version tags for base images in production

### Shell Scripts

- Use `#!/bin/bash` or `#!/bin/sh` shebang
- Quote variables: `"$VAR"` instead of `$VAR`
- Use `set -e` for error handling
- Add comments for complex logic

### YAML Files

- Use 2-space indentation
- Quote strings that could be interpreted as other types
- Add comments for non-obvious configurations

## Reporting Bugs

When reporting bugs, please include:

1. **Environment information**:
   - Docker version
   - Host OS
   - Architecture (amd64/arm64)

2. **Steps to reproduce**:
   - Exact commands used
   - Configuration files (sanitized)

3. **Expected behavior**: What you expected to happen

4. **Actual behavior**: What actually happened

5. **Logs**: Relevant container logs

## Suggesting Features

Feature requests are welcome! Please:

1. Check existing issues to avoid duplicates
2. Describe the use case
3. Explain the expected behavior
4. Consider implementation complexity

## Questions?

If you have questions, feel free to:
- Open a discussion on GitHub
- Create an issue with the "question" label

Thank you for contributing!
