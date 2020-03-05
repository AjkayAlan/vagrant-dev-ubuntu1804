# Credits to https://gist.github.com/grenzi/82e6cb8215cc47879fdf3a8a4768ec09
# for reading .env into env vars

# Read the local env file
$content = Get-Content ".\.env" -ErrorAction Stop
Write-Verbose "Parsed .env file"

# Load the content to environment
foreach ($line in $content) {
    if ($line.StartsWith("#")) { continue };
    if ($line.Trim()) {
        $line = $line.Replace("`"","")
        $kvp = $line -split "=",2
        if ($PSCmdlet.ShouldProcess("$($kvp[0])", "set value $($kvp[1])")) {
            [Environment]::SetEnvironmentVariable($kvp[0].Trim(), $kvp[1].Trim(), "Process") | Out-Null
        }
    }
}

vagrant up
vagrant halt
Set-VM -VMName $env:VM_NAME -EnhancedSessionTransportType HvSocket
vagrant up
