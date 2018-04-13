# Getting started

To start using platyPS in your project, you would need to do a one-time bootstrapping.
You will get 1 markdown file for every cmdlet you have in the module
and you would need to populate the documentation string in the template.

We will use the `Greet.psm1` module for this exercise.

## Get yourself familiar with the training module

Please, read the module source code.
It's very simple and tries to emphasize different parameters metadata,
not the implementation or usefulness.

## Generate markdown for the module

First, you need to import the module to the session to make it visible to platyPS.

```
Import-Module ./Greet.psm1
```

Then you can generate the markdown.
There are 2 parameter sets to do it: with `-Module` or `-Command`.
Here is the first one.

```
New-MarkdownHelp -Module Greet -OutputFolder ./docs
```

Try run it one more time.

**Question**: How to fix the error on the second run?

## Understand the structure of the generated markdown

Please take a look at the generated file.
Its structure closely resembles the `Get-Help` output.
You can find the formal schema description [here](https://github.com/PowerShell/platyPS/blob/6048cd6db6b2b424863d76bea00462168a494a91/platyPS.schema.md).

There are few non-trivial gotchas in the schema:

- You don't need to edit the SYNTAX section by hands.
  It's for convenience in the online help only.
  Everything, except the parameter set name will be ignored in the external help generation.
- Every parameter has metadata in the key-value form.
  It's populated from the actual parameter metadata in the code.
  In most cases, you don't need to change it by hands.
- You can add more Examples by copy-pasting the template.

## Writing the documentation in the template

Open the `./docs/New-Greeting.md` file and write the documentation by replacing all the placeholders (they start with `{{`) by something meaningful.
Please, don't use just dummy entries, put some love in the writing!

*Note: once markdown is generated you can start treating it as the source of truth for the documentation. I.e. fix typos and add new content to the markdown help.*

Don't forget an example!

**Pro Tip**: In the Example section you can do one of 3 options:
1. Omit the output of the command.
   Makes it easy to write, but not great as documentation.
2. Put the output in the same fenced codeblock as the command itself.
   This is an ok option, but if you want the powershell syntax highlighting
   on your code and not your input, we can do better.
3. (Recommended) Put the example command in the codeblock with powershell [language moniker](https://spec.commonmark.org/0.28/#info-string)

~~~
```powershell
PS C:\> New-Item foo
```

```
    Directory: /Users/vors/dev/psconfeu-2018-workshop/01-Bootstrap


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
------           4/7/18   9:31 PM              0 foo
```

~~~

## Generate the external help file (aka MAML XML)

Now we can convert the markdown to the help file that powershell help system can understand.
Use `en-US` for the output path.
If you are on non-English locale use an appropriate locale name instead.

```
New-ExternalHelp -OutputPath en-US -Path ./docs
```

## Preview

You can get the help preview without even re-loading the module.

```powershell
Get-HelpPreview -Path ./en-US/*.xml
```

In fact, you don't need to have the module loaded in the session - all you need for the preview is the xml file.
This can be useful for help development,
when module is not locally available and only the markdown is available to you.

## Trying it out

Now time to reap the fruits!
Re-load the module and get the help out of it.

```
Import-Module ./Greet.psm1 -Force
Get-Help New-Greeting -Full
``` 

**Congratulations, you just learn how to use platyPS with cmdlets help!**

### [Next: about topics](02-AboutTopics.md)
