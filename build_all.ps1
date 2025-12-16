function Build-ZigTarget {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Target
    )
    Remove-Item -Recurse -Force "zig-out/bin" -ErrorAction SilentlyContinue
    Write-Host "zig build -Dtarget=$Target"
    zig build -Dtarget="$Target"

    $outDir = "zig-out/$Target"
    if (-not (Test-Path $outDir)) {
        New-Item -ItemType Directory -Path $outDir | Out-Null
    }

    Copy-Item "zig-out/bin/*" "$outDir/" -Force
}

Build-ZigTarget -Target "x86_64-linux-musl"
Build-ZigTarget -Target "x86_64-linux-gnu"
Build-ZigTarget -Target "aarch64-linux-musl"
Build-ZigTarget -Target "aarch64-linux-gnu"
Build-ZigTarget -Target "x86_64-windows-gnu"
Build-ZigTarget -Target "aarch64-windows-gnu"
# Build-ZigTarget -Target "x86_64-macos"
# Build-ZigTarget -Target "aarch64-macos"


