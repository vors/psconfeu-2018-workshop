---
external help file: Greet-help.xml
Module Name: Greet
online version:
schema: 2.0.0
---

# New-Greeting

## SYNOPSIS
Greeting people.

## SYNTAX

```
New-Greeting [-Name] <String> [-Greeting <String>] [-FooBar <String>] [<CommonParameters>]
```

## DESCRIPTION
Greet people at the conference.

## EXAMPLES

### Example 1
```powershell
PS C:\> New-Greeting -Name 'PSConfEU'
```

```
Hello PSConfEU
```

### Example 2
```powershell
PS C:\> 'a'..'c' | New-Greeting
```

```
Hello a
Hello b
Hello c
```

Greet a, b, c.

## PARAMETERS

### -Name
Name of the person to greet.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -FooBar
Bogus parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Greeting
The noun to use.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Hello
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
