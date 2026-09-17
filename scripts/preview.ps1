param([switch]$Build)
$ErrorActionPreference = 'Stop'
$siteRoot = Split-Path -Parent $PSScriptRoot
Push-Location $siteRoot
try {
    # Reuse the optional local runtime prepared during the initial preview.
    $localRuby = Join-Path $siteRoot 'tmp/rubydev/bin'
    $localGems = Join-Path $siteRoot 'tmp/gems'
    if (Test-Path (Join-Path $localRuby 'ruby.exe')) {
        $env:PATH = "$localRuby;$localGems/bin;$env:PATH"
        $env:GEM_HOME = $localGems
        $env:GEM_PATH = $localGems
    }
    if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
        throw 'Install Ruby and Bundler, then run bundle install. See README.md.'
    }
    if ($Build) {
        & bundle exec jekyll build --strict_front_matter
    } else {
        & bundle exec jekyll serve --host 127.0.0.1 --port 4000
    }
    if ($LASTEXITCODE -ne 0) { throw "Jekyll exited with code $LASTEXITCODE" }
} finally {
    Pop-Location
}
