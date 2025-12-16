function Build-ZigTarget {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Target
    )
    Remove-Item -Recurse -Force "zig-out/bin" -ErrorAction SilentlyContinue
    Write-Host "zig build -Dtarget=$Target"
    zig build -Dtarget="$Target" -Doptimize=ReleaseSmall
    $success=$?
    if (-not $success) {
        Write-Host "Build failed for target $Target" -ForegroundColor Red
        exit 1
    }
    $outDir = "zig-out/$Target"
    if (-not (Test-Path $outDir)) {
        New-Item -ItemType Directory -Path $outDir | Out-Null
    }

    Copy-Item "zig-out/bin/*" "$outDir/" -Force
}

# Linux x86_64
Build-ZigTarget -Target "x86_64-linux-musl"
Build-ZigTarget -Target "x86_64-linux-gnu"

# Linux x86 (32-bit)
Build-ZigTarget -Target "x86-linux-musl"
Build-ZigTarget -Target "x86-linux-gnu"

# Linux ARM64
Build-ZigTarget -Target "aarch64-linux-musl"
Build-ZigTarget -Target "aarch64-linux-gnu"

# Linux ARM (32-bit)
Build-ZigTarget -Target "arm-linux-musleabi"
Build-ZigTarget -Target "arm-linux-gnueabi"

# Linux RISC-V 64
Build-ZigTarget -Target "riscv64-linux-musl"

# Linux LoongArch64
Build-ZigTarget -Target "loongarch64-linux-musl"

# Linux PowerPC64
Build-ZigTarget -Target "powerpc64-linux-musl"

# Linux MIPS
Build-ZigTarget -Target "mips-linux-musleabi"
Build-ZigTarget -Target "mipsel-linux-musleabi"

# Windows x86_64
Build-ZigTarget -Target "x86_64-windows-gnu"

# Windows ARM64
Build-ZigTarget -Target "aarch64-windows-gnu"

# macOS (commented out - requires macOS SDK)
# Build-ZigTarget -Target "x86_64-macos"
# Build-ZigTarget -Target "aarch64-macos"


