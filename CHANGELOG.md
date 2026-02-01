# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Docker HEALTHCHECK instruction for container health monitoring
- Kubernetes liveness and readiness probes
- Comprehensive README with architecture diagram
- Chinese documentation (README_CN.md)
- CONTRIBUTING.md guide
- SECURITY.md policy
- GitHub issue and PR templates

### Changed
- Updated GitHub Actions to v4/v5
- Unified Docker image name to `cdryzun/docker-openconnect-ldap`
- Added build caching for faster CI/CD

### Fixed
- Corrected image references in example configurations

## [1.0.0] - 2024-01-01

### Added
- Initial release
- OpenConnect VPN server with LDAP/AD authentication
- Multi-platform support (amd64, arm64)
- Docker Compose and Kubernetes deployment examples
- Auto-generated SSL certificates
- Split tunneling support
- Customizable DNS configuration

---

## Version History

| Version | Date | Description |
|---------|------|-------------|
| 1.0.0 | 2024-01-01 | Initial release |
