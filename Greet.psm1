function New-Greeting() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true, 
            ValueFromPipeline=$true)]
        [string]$Name,
        [string]$Greeting = "Hello",
        [string]$FooBar
    )

    process {
        $Greeting + " " + $Name
    }
}

function Get-Name {
    [CmdletBinding()]
    param(
        [switch]$Long
    )

    if ($Long.IsPresent) {
        'a'..'z'
    }
    else {
        'a'..'d'
    }
}
