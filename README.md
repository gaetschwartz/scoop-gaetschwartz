# scoop-gaetschwartz

Scoop bucket for [Purr](https://github.com/gaetschwartz/purr). Everything under `bucket/` is generated
and pushed by Purr's release workflow; do not edit it by hand.

```powershell
scoop bucket add gaetschwartz https://github.com/gaetschwartz/scoop-gaetschwartz
```

The bucket must be added under the name `gaetschwartz`: the app manifests depend on `gaetschwartz/purr`.

| Install | What you get | Channel |
| --- | --- | --- |
| `scoop install purr` | `purr` command-line tool | latest release |
| `scoop install purr-app` | Purr desktop app (portable build), plus the command-line tool | latest release |
| `scoop install purr-nightly` | `purr` command-line tool | latest nightly |
| `scoop install purr-app-nightly` | Purr desktop app (portable build), plus the command-line tool | latest nightly |

The stable and nightly packages both provide the `purr` command, so install one channel at a time.

Windows x64 only. The builds bundle the CUDA runtime, so each download is about 500 MB. Nightlies move
forward with `scoop update`.

## Publishing

Purr's release workflow pushes to this repository over SSH with a write deploy key that exists only on
this repository (stored as the `PURR_BUCKET_DEPLOY_KEY` secret in the Purr repository). The key cannot
touch any other repository, and revoking it (Settings, Deploy keys) stops publishing immediately.
