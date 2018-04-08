function New-Greeting() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, 
            ValueFromPipeline=$true)]
        [string]$Name
    )

    process {
        "Hello " + $Name
    }
}
