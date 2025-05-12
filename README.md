# TrustCoin - Everyone's Trust

## Overview
TrustCoin is a decentralized token system designed to foster trust and transparency. It ensures:
- **Founder Privileges with Self-Control**: The founder has specific privileges but is bound by transparent rules.
- **Non-Manipulable Value**: The token's value works through market dynamics and cannot be artificially manipulated.
- **Only Upward Growth in Value**: The token's mechanisms ensure its value can only increase or remain stable, never decrease.

## Features
- Decentralized trust mechanisms through smart contracts.
- Value protection and growth via deflationary mechanisms and reserve funds.
- Fully open-source and community governed.

## Components
- **Frontend**: A Vercel-deployed web interface.
- **Smart Contracts**: Ethereum-based contracts deployed on the Polygon Mumbai testnet.
- **Monitoring**: Real-time monitoring via Tableland and UptimeRobot.

## Quick Start
1. Clone this repository:
   ```bash
   git clone https://github.com/YourUsername/TrustCoin-Everyones-Trust.git
   cd TrustCoin-Everyones-Trust
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Deploy the frontend:
   ```bash
   cd frontend
   vercel --prod
   ```

4. Deploy the smart contracts:
   ```bash
   cd ../contracts
   npx hardhat run scripts/deploy.js --network mumbai
   ```

5. Initialize monitoring:
   ```bash
   cd ../monitor
   node createTable.js
   ```

## License
This project is licensed under the MIT License.