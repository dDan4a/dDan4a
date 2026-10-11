### Hi, I'm Dan 👋

Backend engineer. I build Go services that handle real-time traffic: gRPC APIs, Postgres, and WebSocket fan-out with Centrifugo.
These days I'm also getting into Rust, and building tools on top of LLM agents.

**Stack:** Go · gRPC / grpc-gateway · PostgreSQL · Centrifugo · Kubernetes · GitLab CI · Rust (learning) · Python

#### 🔨 Currently building

- **CONFident**: runtime configuration service. It stores config as a tree with per-environment values and symlinks.
  Each host runs a local LMDB replica, so services read config without network calls. Built in the spirit of OnlineConf.
- **[syschange](https://github.com/dDan4a/syschange)**: a history of changes to your Linux setup (config files, packages, services) with a reason for each one, diff and undo.
  Ships as a Go CLI and an [Omarchy bar plugin](https://omarchyplugins.com/plugin.html?id=dan4a.syschange), and shows what your AI agents changed.

#### 📦 Libraries

| Repo | What it does |
|---|---|
| [tsukuyomi](https://github.com/dDan4a/tsukuyomi) | Atomic status transitions for any domain entity: a transition graph with guards and hooks, plus compare-and-swap storage (Postgres included) |

#### 📫 Contact

danshtal@gmail.com
