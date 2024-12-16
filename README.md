# SoraChain AI

A privacy preserving ** Universal Machine Learning Engine. **

[![protocol.land](https://arweave.net/eZp8gOeR8Yl_cyH9jJToaCrt2He1PHr0pR4o-mHbEcY)](https://protocol.land/#/repository/04d0cecd-2aa5-4f5c-9c69-cabff26d9934)

[![SoraChain AI](https://img.shields.io/twitter/follow/sorachain_ai)](https://x.com/sorachain_ai)

## OverView

SoraChain AI is a cutting-edge, privacy-preserving universal machine learning engine designed to unlock the value of high-quality data trapped within edge devices and enterprise data silos. As the era of internet-wide data scraping by current AI LLMs reaches its limits, SoraChain AI paves the way for the next generation of intelligent systems by enabling secure and decentralized data collaboration.

## Components of project

** BlockChain Layer
** Ai Layer
\*\* Front End Component

<details>

<summary> ## testnet BlockChain Layer of Sora AI</summary>

** This layer consists of blockchain layer of Aggregrator, validator , Trainer nodes of Sora **

The Project uses foundry to setup local Blockchain server and test the Blockchain Layer.

# Steps to setup

### Install Foundry

'''
forge init

'''

</details>

## Documentation

http://docs.thesorachain.com

## Usage

### Build

```shell
$ forge build
```

### Anvil

```shell
$ anvil
```

### Deploy test local

\*\*Do not use personal Private key

```shell
forge script script/SoraContract.s.sol --broadcast --rpc-url $RPC_URL --private-key $PRIVATE_KEY


```
