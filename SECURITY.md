# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| latest  | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

We take security seriously. If you discover a security vulnerability, please report it responsibly.

### How to Report

1. **Do NOT** create a public GitHub issue for security vulnerabilities.

2. **Email**: Send details to the maintainer (check the Dockerfile for contact information).

3. **Include**:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if any)

### What to Expect

- **Acknowledgment**: We will acknowledge receipt within 48 hours.
- **Assessment**: We will assess the vulnerability and determine its severity.
- **Fix Timeline**: Critical vulnerabilities will be addressed as soon as possible.
- **Disclosure**: We will coordinate with you on public disclosure timing.

## Security Best Practices

When deploying this container, follow these security recommendations:

### Network Security

- Use a firewall to restrict access to port 443
- Consider using a reverse proxy with additional security features
- Implement rate limiting to prevent brute-force attacks

### LDAP Security

- Use LDAPS (LDAP over SSL) instead of plain LDAP
- Use a dedicated service account with minimal permissions
- Regularly rotate LDAP bind credentials

### Certificate Security

- Use CA-signed certificates in production
- Implement certificate rotation
- Monitor certificate expiration

### Container Security

- Run with minimal privileges when possible
- Keep the container image updated
- Use Docker secrets or Kubernetes secrets for sensitive data
- Implement network policies in Kubernetes

### Monitoring

- Enable logging and monitor for suspicious activity
- Set up alerts for failed authentication attempts
- Regularly review access logs

## Known Security Considerations

### Privileged Mode

This container requires `privileged: true` or `NET_ADMIN` capability to create VPN tunnels. This is a necessary requirement for VPN functionality but increases the attack surface.

**Mitigation**:
- Run the container on a dedicated host when possible
- Use network segmentation
- Implement additional monitoring

### LDAP Credentials

LDAP bind credentials are passed as environment variables, which may be visible in process listings.

**Mitigation**:
- Use Docker secrets or Kubernetes secrets
- Restrict access to the Docker daemon
- Use encrypted secret management solutions

## Security Updates

Security updates will be released as new container images. To update:

```bash
docker pull cdryzun/docker-openconnect-ldap:latest
docker-compose up -d
```

Subscribe to GitHub releases to be notified of security updates.
