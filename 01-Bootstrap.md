# Getting started

To start using platyPS in your project, you would need to do a one-time bootstraping.
You will get 1 markdown file for every cmdlet you have in the module
and you would need to poluate the documentation string in the template.

We will use the `Greet.psm1` module for this exercise.

## Get youself familiar with the training module

Please, read the module source code.
It's very simple and tries to emphasise different parameters metadata,
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


## Writing the documentation in the template

Open the `./docs/New-Greeting.md` file and write the documentation by replacing all the placeholders (they start with `{{`) by something meaningful.
Please, don't use just dummy entries, put some love in the writing!

Don't forget an example!

**Pro Tip**: In the Example section you can do one of 3 options:
1. Ommit the output of the command.
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

Now we can convert the markdown to the help file that powe
Use `en-US` for the output path.
If you are on non-English locale use an appropriate locale name instead.

```
New-ExternalHelp -OutputPath en-US -Path ./docs
```

## Trying it out

Now time to reap the fruties!
Re-load the module and get the help out of it.

```
Import-Module ./Greet.psm1 -Force
Get-Help New-Greeting -Full
``` 
