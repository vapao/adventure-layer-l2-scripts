# Adventure Layer L2 Scripts

![License](https://img.shields.io/badge/License-MIT-blue.svg)

## Project Overview

This repository contains core scripts for AdventureGold DAO's Layer 2 solution, including smart contract deployment,
interaction scripts, and testing utilities. Designed to facilitate cross-chain asset bridging, Layer 2 transaction
processing, and smart contract management.

### Directory Structure

```
.
├── contracts/ # Smart contract source code
│ ├── Bridge.sol # Cross-chain bridging main contract
│ └── L2Token.sol # Layer 2 token contract
├── scripts/ # Deployment & interaction scripts
│ ├── deploy/ # Deployment scripts
│ │ ├── deploy_bridge.js
│ │ └── deploy_token.js
│ └── tasks/ # Hardhat custom tasks
├── test/ # Test cases
│ ├── bridge.test.js # Cross-chain bridge tests
│ └── token.test.js # Token contract tests
├── hardhat.config.js # Hardhat configuration
├── .env.example # Environment template
└── package.json # Dependency configuration

```

## Development Setup

### Prerequisites

- Node.js v16.x+
- npm v8.x+
- Git

### Install Dependencies

```bash
git clone https://github.com/AdventureGoldDao/adventure-layer-l2-scripts.git
cd adventure-layer-l2-scripts
npm install
```

### Environment Configuration

1. Copy environment template:
   ```bash
   cp .env.example .env
   ```
2. Configure variables (Obtain API keys from service providers):
   ```ini
   ALCHEMY_API_KEY="your_alchemy_key"
   INFURA_API_KEY="your_infura_key"
   MNEMONIC="your_wallet_mnemonic"
   ETHERSCAN_API_KEY="your_etherscan_key"
   ```

### Start Local Chain

```bash
npx hardhat node
```

### Run Tests

```bash
npx hardhat test
```

## Production Deployment

### Preparation

1. Verify all tests pass:
   ```bash
   npx hardhat test
   ```
2. Compile contracts:
   ```bash
   npx hardhat compile
   ```

### Mainnet Deployment

```bash
npx hardhat run scripts/deploy/deploy_bridge.js --network mainnet
npx hardhat run scripts/deploy/deploy_token.js --network mainnet
```

### Contract Verification

```bash
npx hardhat verify --network mainnet <CONTRACT_ADDRESS> <CONSTRUCTOR_ARGUMENTS>
```

## Additional Information

### Security Practices

- Never commit MNEMONIC/private keys to version control
- Use hardware wallets for production key management
- Conduct full audits before deployment

### Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/new-feature`)
3. Commit changes (`git commit -am 'Add new feature'`)
4. Push branch (`git push origin feature/new-feature`)
5. Create Pull Request

### License

MIT License

### Support

Contact dev-support@adventuregolddao.org for deployment assistance

```
