﻿Import-Module $PSScriptRoot\AzurePublicIPAddresses.psm1 -Force -Verbose

Set-Location $PSScriptRoot

Describe 'AzurePublicIPAddresses' {
    Context 'Script Analyzer' {
        It 'Does not have any issues with the Script Analyser - Get-MicrosoftAzureDatacenterIPRange' {
            Invoke-ScriptAnalyzer .\Functions\Get-MicrosoftAzureDatacenterIPRange.ps1 | Should be $null
        }
        It 'Does not have any issues with the Script Analyser - Get-MicrosoftAzureDatacenterIPRangeFile' {
            Invoke-ScriptAnalyzer .\Functions\Get-MicrosoftAzureDatacenterIPRangeFile.ps1 | Should be $null
        }
    }
}
