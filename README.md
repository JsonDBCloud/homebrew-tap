# homebrew-tap

Homebrew tap for the [jsondb](https://github.com/JsonDBCloud/cli) CLI — the command-line interface for [jsondb.cloud](https://jsondb.cloud), a hosted JSON document database.

[![CI](https://github.com/JsonDBCloud/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/JsonDBCloud/homebrew-tap/actions)
[![GitHub stars](https://img.shields.io/github/stars/JsonDBCloud/homebrew-tap)](https://github.com/JsonDBCloud/homebrew-tap)
[![Last commit](https://img.shields.io/github/last-commit/JsonDBCloud/homebrew-tap)](https://github.com/JsonDBCloud/homebrew-tap)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Install

```bash
brew tap JsonDBCloud/tap
brew install jsondb
```

## Quick Start

```bash
# Authenticate
jsondb auth login

# List collections
jsondb collections list

# Push local data
jsondb push ./data/users.json --collection users
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `jsondb` | CLI tool for jsondb.cloud — manage your JSON database from the terminal |

## Documentation

Full documentation at [jsondb.cloud/docs](https://jsondb.cloud/docs).

## Related Packages

| Package | Description |
|---------|-------------|
| [@jsondb-cloud/client](https://github.com/JsonDBCloud/node) | JavaScript/TypeScript SDK |
| [@jsondb-cloud/mcp](https://github.com/JsonDBCloud/mcp) | MCP server for AI agents |
| [@jsondb-cloud/cli](https://github.com/JsonDBCloud/cli) | CLI tool |
| [jsondb-cloud](https://github.com/JsonDBCloud/python) (PyPI) | Python SDK |

## License

MIT
