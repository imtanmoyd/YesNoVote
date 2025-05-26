# SmartContract
CoreDAO x Hack4Bengal

# ✅ YesNoVote Smart Contract

A minimal on-chain voting contract that allows users to cast a simple **Yes** or **No** vote. Each address can vote only once.

---

## 📝 Features

- ✅ One vote per wallet
- 👍 Tracks total `Yes` and `No` votes
- 🔐 Only the contract owner can reset vote counts (for reuse)
- 🔍 Public view of results

---

## 🚀 How It Works

1. **Deploy the contract** (owner becomes deployer)
2. **Users vote** using:
   - `voteYes()` – to vote Yes
   - `voteNo()` – to vote No
3. **View results** using:
   - `getResults()` – returns total Yes and No counts
4. (Optional) **Reset votes** using `resetVotes()` (owner only)

---

## 🔧 Contract Functions

| Function         | Type    | Description                             |
|------------------|---------|-----------------------------------------|
| `voteYes()`      | Public  | Vote Yes (1 vote per address)           |
| `voteNo()`       | Public  | Vote No (1 vote per address)            |
| `getResults()`   | View    | Returns (yesVotes, noVotes)             |
| `resetVotes()`   | Owner   | Resets votes to 0 (cannot reset voters) |
| `hasVoted(addr)` | View    | Check if an address has voted           |

---

## 🛠 Deploy & Test

Use [Remix IDE](https://remix.ethereum.org):

1. Paste the `YesNoVote.sol` code
2. Compile with Solidity ^0.8.19
3. Deploy on **Remix VM** or via **Injected Web3 (MetaMask)**
4. Interact with the buttons:
   - `voteYes()`
   - `voteNo()`
   - `getResults()`

---

## 📦 Example Output

## contract address	0xff44bc1556e15caa01148b194ba777fbafdd09c3

![transaction](https://github.com/user-attachments/assets/77f338ed-de0b-4003-a2cc-d30c82df7abd)



