# PRESS RELEASE

**Status:** Draft. Final copy must be approved by founders, the Aleph Cloud team, counsel, and marketing before any wire distribution. Replace remaining placeholder markers with named, sourceable values.

**Dateline:** [Founder city], [release date].
**For immediate release.**

---

## Orogen builds its early network on Aleph Cloud

**[Founder city], [release date].** Orogen, a decentralized network for verifiable LLM inference, has chosen Aleph Cloud as the compute and hosting substrate for the first phase of the project. From the start of its Forge testnet, Orogen's public sites, chain and indexer endpoints, validator nodes, and GPU operators run on Aleph Cloud's distributed infrastructure rather than on a single centralized cloud account.

The decision keeps Orogen consistent with what it asks of its own participants. A network whose pitch is that customers, operators, and the chain can each independently check the work has a hard time justifying a control plane that sits inside one hyperscaler. Aleph Cloud supplies confidential virtual machines, GPU instances up to H100 and H200, dual-stack IPv6 connectivity, and a usage-based credit model, which lets Orogen bootstrap real nodes without taking on that single point of trust.

### Why this matters

Most of the pieces for decentralized AI infrastructure already exist in production somewhere. Bittensor's SN3 ran more than 70 peers across three continents on commodity 500/110 Mbps links, which showed that distributed inference holds up on consumer-grade bandwidth. Phala's TEE attestation routes over a billion tokens per day for OpenRouter clients, which showed that hardware-attested confidentiality is ready for real traffic. Akash's burn-and-mint redesign moved token economics away from a 13 to 15 percent inflationary regime toward issuance that tracks real demand.

What has been missing is an end-to-end settlement layer that ties those patterns together and closes the verification loop. Orogen composes verifiability, attestation, and burn-and-mint into a single network with one OpenAI-compatible API surface, validator replay over identical hardware, and emission that is mechanically tied to burn. Running that network on a decentralized substrate from day one is part of the same argument. The infrastructure should be inspectable for the same reason the inference is.

### What Orogen is

Orogen is a decentralized network for verifiable LLM inference. The Forge testnet exercises an OpenAI-compatible gateway, GPU operators whose hardware is attested by multi-vendor TEE (Intel TDX, AMD SEV-SNP, NVIDIA Confidential Computing), validator replay over identical hardware, on-chain receipts, opML challenge windows, and zkML proofs for the residual cases. These verification layers compound, so assurance does not rest on any single guarantee.

Settlement runs on a pallet-enforced burn-and-mint engine on a Substrate-based chain (Polkadot SDK, Frontier EVM JSON-RPC, GRANDPA finality, roughly 12-second blocks). Customers pay in non-transferable Compute Unit Credits (CUC) that carry a 30-day expiry. The gateway burns CUC when a job completes, and operator settlement tracks real burn at a USD-denominated rate, so compensation follows completed inference instead of token speculation. Emission is demand-elastic under a 5 percent per year supply ceiling and a rolling 180-day burn-cap floor, with no foundation mint discretion.

Operators self-declare into one of six hardware tiers, from datacenter-premium down to CPU edge, each with its own stake floor and service level. The network token is OROG, with a 75/15/5/5 emission split across operators, validators, treasury, and ecosystem. Governance moves on-chain after mainnet TGE, and foundation control of the mint is contractually capped rather than policy-capped.

### Why Aleph Cloud

Aleph Cloud is a decentralized cloud network of Core Channel Nodes for coordination and Compute Resource Nodes for compute supply, including VMs, functions, GPU workloads, and AMD SEV confidential VMs. Customers top up compute credits with USDC, ALEPH, or other tokens, and operators are rewarded for usage. For Orogen's first phase that combination covers the practical needs (somewhere to host the static surfaces, run the testnet validators and indexer, and place GPU operators) on infrastructure that already shares Orogen's decentralization and confidential-compute goals.

**[Founder name, title]** said: "[Quote, no more than 60 words. Should state why a verifiable network hosts its own control plane on decentralized infrastructure, name the early-phase scope honestly, and avoid yield or investment framing.]"

**[Aleph Cloud spokesperson, title]** said: "[Quote, no more than 60 words. Should describe what Aleph Cloud provides and avoid overclaiming a formal commercial commitment beyond the early-phase hosting described here.]"

### About Orogen

Orogen is an open network for verifiable LLM inference. The Forge testnet exercises an OpenAI-compatible gateway, multi-vendor TEE-attested GPU operators, validator replay, on-chain receipts, and opML and zkML verification. Settlement uses a pallet-enforced burn-and-mint engine on a Substrate-based chain, with USD-denominated operator compensation tied to completed inference and demand-elastic emission under a 5 percent per year supply ceiling. Forge readiness is tracked through the published release gates. Mainnet TGE follows multi-firm audit completion. Documentation, RFCs, downloads, and source code live at [orogen.network](https://orogen.network).

### About Aleph Cloud

Aleph Cloud is a decentralized cloud network providing virtual machines, functions, storage, GPU instances, and AMD SEV confidential computing across an operator-run set of compute nodes, with a credit-based payment model. More information is at [aleph.cloud](https://aleph.cloud).

### Media contact

- **Email:** press@orogen.network
- **Press kit:** [github.com/orogen-network/press-kit](https://github.com/orogen-network/press-kit)
- **Background documents:**
  - Whitepaper PDF: [orogen.network/downloads](https://orogen.network/downloads)
  - Documentation: [docs.orogen.network](https://docs.orogen.network)
  - Source code: [github.com/orogen-network](https://github.com/orogen-network)

### Forward-looking statement

This draft must be reviewed by counsel and by the Aleph Cloud team before distribution. Descriptions of Forge reflect testnet scope, not a production token launch. Mainnet TGE follows multi-firm audit completion.

###
