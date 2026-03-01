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
jsondb login

# List collections
jsondb collections

# Push local data
jsondb push ./data/users.json --to users
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
| [@jsondb-cloud/client](https://www.npmjs.com/package/@jsondb-cloud/client) | JavaScript/TypeScript SDK |
| [@jsondb-cloud/mcp](https://www.npmjs.com/package/@jsondb-cloud/mcp) | MCP server for AI agents |
| [@jsondb-cloud/cli](https://www.npmjs.com/package/@jsondb-cloud/cli) | CLI tool |
| [jsondb-cloud](https://pypi.org/project/jsondb-cloud/) (PyPI) | Python SDK |

## License

MIT
