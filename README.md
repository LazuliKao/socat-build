# socat-build — Build & Usage

This repository contains only build scripts and helper files used to produce `socat` binaries for convenience. It is not the upstream `socat` source tree; see the upstream project for the original sources.

upstream socat repository:
<https://repo.or.cz/socat.git>

This document provides concise instructions for building the included `socat` sources and running the resulting binary.

## Build

- Windows (PowerShell, Zig):

```powershell
git clone https://github.com/your-org/socat-build.git
cd socat-build
.\build_all.ps1
```

The script uses Zig to build and places artifacts under `zig-out\x86_64-windows-gnu\` and `zig-out\bin\`.

- Build with Zig manually (if desired):

```powershell
zig version
zig build
```

- Unix-like systems (autotools):

```bash
./configure
make
# sudo make install    # optional
```

## Usage

- Check the built binary version:

```powershell
.\zig-out\x86_64-windows-gnu\socat.exe -V
```

- Run a simple TCP echo service (example):

```bash
# Server: listen on port 8000 and echo
./socat TCP-LISTEN:8000,reuseaddr,fork EXEC:'/bin/cat'

# Client: connect to the server (another terminal)
telnet localhost 8000
```

- Copy the built exe if you want a common bin path:

```powershell
Copy-Item zig-out\x86_64-windows-gnu\socat.exe zig-out\bin\socat.exe -Force
```

## Notes

- Ensure `zig` is installed and available in `PATH` on Windows.

For further development, debugging, or platform-specific options, check the repository and existing build scripts.
