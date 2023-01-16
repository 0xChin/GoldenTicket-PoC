# EOA Pseudorandomness exploit PoC

### Table of contents

- [About the project](#about-the-project)
- [Installation and usage](#installation-and-usage)

### About the project
This is a Proof of Concept of how a smart contract that relies on pseudorandom data such as block hash and block timestamp can be exploited. Although this is a [known vulnerability](https://solidity-by-example.org/hacks/randomness/), in this example, instead of exploiting it from a smart contract, it is exploited directly by an EOA using [Flashbots](https://docs.flashbots.net/flashbots-auction/searchers/quick-start).

### Installation and usage

##### .env
```bash
cp .env.example .env
```

 Fill your `.env` with:
- `GOERLI_RPC_URL`: A node endpoint, you can get it from [Chainlist](https://chainlist.org/)
- `PRIVATE_KEY`: The private key that will deploy + attack the contract

##### Test it
```bash
npx hardhat run scripts/exploit.ts
```

