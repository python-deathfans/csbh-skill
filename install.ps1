param(
    [ValidateSet('codex','claude','cursor','gemini','project')]
    [string]$Agent = 'codex',
    [string]$ProjectPath = '',
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$src = $PSScriptRoot

switch ($Agent) {
    'codex'   { $dest = Join-Path $HOME '.codex\skills\csbh' }
    'claude'  { $dest = Join-Path $HOME '.claude\skills\csbh' }
    'cursor'  { $dest = Join-Path $HOME '.cursor\skills\csbh' }
    'gemini'  { $dest = Join-Path $HOME '.gemini\skills\csbh' }
    'project' {
        if (-not $ProjectPath) { throw 'project 模式需要 -ProjectPath <项目根目录>' }
        $dest = Join-Path $ProjectPath '.agents\skills\csbh'
    }
}

if (Test-Path $dest) {
    if (-not $Force) {
        Write-Host "目标已存在: $dest" -ForegroundColor Yellow
        Write-Host "如需覆盖，请加 -Force" -ForegroundColor Yellow
        exit 1
    }
    Remove-Item -LiteralPath $dest -Recurse -Force
}

$parent = Split-Path $dest -Parent
New-Item -ItemType Directory -Path $parent -Force | Out-Null
New-Item -ItemType Directory -Path $dest -Force | Out-Null

$items = @('SKILL.md','references','test-prompts.json','test-results.md','使用说明.md')
foreach ($item in $items) {
    $p = Join-Path $src $item
    if (Test-Path $p) {
        Copy-Item -LiteralPath $p -Destination $dest -Recurse -Force
    }
}

Write-Host "已安装 csbh -> $dest" -ForegroundColor Green
Write-Host "新开一轮对话即可使用；试试问：我要存多少钱才能不上班？" -ForegroundColor Green
