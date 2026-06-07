# PRESS RELEASE — MAINNET TGE TEMPLATE

**Status:** Draft template, not a public announcement. Final copy must be approved by founders, counsel, and marketing before any wire distribution. Replace remaining placeholder markers with named, sourceable values.

**Embargo until:** [Mainnet TGE date, set after final audit sign-off].
**Dateline:** [Foundation jurisdiction city], [Mainnet TGE date].
**For immediate release.**

---

## Orogen launches mainnet: verifiable LLM inference on mainnet OROG

**[Foundation city], [Mainnet TGE date].** Orogen, an open network for verifiable LLM inference, today launches its mainnet and token generation event. The Forge testnet has been running since [Forge launch date], routing OpenAI-compatible traffic to TEE-attested GPU operators with validator replay. Mainnet inherits that operational record and the closed-loop verification stack, and adds the live OROG token with burn-and-mint settlement on a Substrate-based chain (Polkadot SDK plus Frontier EVM JSON-RPC, with GRANDPA finality). Settlement is pallet-enforced rather than policy-enforced: customers pay in non-transferable Compute Unit Credits (CUC), the gateway burns CUC at job completion, and the chain mints OROG to operators at a USD-denominated rate that tracks real burn. The network ships an OROG token with a 75/15/5/5 emission split, a 5%/year supply ceiling, and a rolling-180-day burn-cap floor — no foundation mint discretion.

**Why this matters.** Decentralized AI infrastructure has accumulated working components but no end-to-end settlement layer with closed-loop verification. Bittensor's SN3 ran 70+ peers across 3 continents at 500/110 Mbps commodity bandwidth, demonstrating that distributed inference scales on consumer-grade links. Phala's TEE attestation already routes over 1 billion tokens per day for OpenRouter clients, demonstrating that TEE-based confidentiality is production-ready. Akash's burn-and-mint redesign shifted token economics from a 13–15% inflationary regime to revenue-pegged net deflation when demand runs hot, demonstrating that BME aligns operator payouts with real usage. Orogen composes these three patterns — verifiability, attestation, burn-and-mint — into a single network with a unified API surface, replay over identical hardware, and emission that is mechanically tied to burn.

**[Founder name, title]** said: "[Quote, ≤60 words. Should restate verifiability and USD-denominated operator settlement, name one constituency (customers, operators, or validators), and avoid yield or investment framing.]"

### About Orogen

Orogen is a decentralized network for verifiable LLM inference. An OpenAI-compatible gateway routes requests to GPU operators whose hardware is attested by multi-vendor TEE (Intel TDX, AMD SEV-SNP, NVIDIA Confidential Computing); validators replay a stake-weighted sample of jobs on identical hardware and submit on-chain receipts; opML challenge windows and zkML proofs cover the residual cases. Eight verification layers compound rather than rely on any single guarantee.

Settlement runs through a pallet-enforced burn-and-mint engine on a Substrate-based chain (Polkadot SDK, Frontier EVM JSON-RPC, GRANDPA finality, ~12-second blocks). Customers pay in non-transferable Compute Unit Credits (CUC) with a 30-day expiry; the gateway burns CUC at job completion and the chain mints OROG to the operator at a USD-denominated rate that tracks real burn. The emission schedule is demand-elastic with a 5%/year supply ceiling and a rolling-180-day burn-cap floor — no foundation mint discretion.

Operators self-declare into one of six hardware tiers from datacenter-premium (Hopper/Blackwell with full attestation) down to embed-only (CPU edge), each with its own stake floor and SLA. Validator settlement is tied to replay and anomaly detection. Customers get drop-in OpenAI compatibility: existing application code works against a different base URL.

The network token is OROG, with a 75/15/5/5 emission split across operators, validators, treasury, and ecosystem. Locked-backer and team allocations follow long vesting schedules. Governance is on-chain at mainnet TGE; foundation control of the mint is contractually capped, not policy-capped. The testnet is Forge; mainnet runs the same protocol against the live OROG token.

Documentation, RFCs, downloads, and the source code live at [orogen.network](https://orogen.network).

### Media contact

- **Email:** press@orogen.network
- **Press kit:** [github.com/orogen-network/press-kit](https://github.com/orogen-network/press-kit)
- **Background documents:**
  - Whitepaper PDF: [orogen.network/downloads](https://orogen.network/downloads)
  - Documentation: [docs.orogen.network](https://docs.orogen.network)
  - Source code: [github.com/orogen-network](https://github.com/orogen-network)

### Forward-looking statement

This template must be reviewed by counsel before distribution.

###
