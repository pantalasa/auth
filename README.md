# auth [![Earthly Lunar status](https://badges.staging.earthly.dev:443/badges/pantalasa-auth-main?v=1)](https://lunar.demo.earthly.dev/d/aecnnrn714em8d/component-details?orgId=1&from=now-6h&to=now&timezone=browser&var-component=github.com%2Fpantalasa%2Fauth&var-pr=null&var-name=auth&var-branch=main&refresh=5s)

Auth demo project, monitored by Earthly Lunar ®.

Central configuration at: https://github.com/pantalasa/lunar

<!-- Trigger compliance-bundle collector -->
<!-- Trigger full compliance bundle -->

## Project Overview

The auth component provides the "authentication" capability for the Pantalasa
platform. It is owned by dane@pantalasa.org and implemented primarily in python.

## Installation

Clone the repository and install dependencies using the standard python
toolchain.

## Usage

Build and run using the commands documented in [AGENTS.md](AGENTS.md).

## Project Structure

| Path | Purpose |
|------|---------|
| `pantalasa.json` | Service manifest (owner, domain, deployment) |
| `.argocd/` | ArgoCD Application manifest |
| `AGENTS.md` | Agent / contributor instructions |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Security policy: [SECURITY.md](SECURITY.md).

## License

Released under the MIT License — see [LICENSE](LICENSE).
