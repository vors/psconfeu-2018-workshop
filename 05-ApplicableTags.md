# Using applicable tags

PlatyPS has an ability to combine documentation for multiple version of the module
in a single markdown file.

[This MS Office documentation team blog](https://techcommunity.microsoft.com/t5/IT-Resources-Training-Blog/How-Microsoft-used-PlatyPS-to-evergreen-and-open-source-Office/ba-p/179949) explains the benefits of doing it

> The Merging of multiple articles into a single article has several benefits. One of the biggest is that it shines a spotlight on the content and forces an action to address issues and ‘clean up’ content. This results in much cleaner help content and customers win. It also results in better search experience because you will only see one result per cmdlet as opposed to 4 or 5 nearly identical topics.

## Merging

In directory `./PowerShell-Doc` you will find a small subset of files copied from https://github.com/PowerShell/PowerShell-Docs

There is markdown help for all powershell versions from 3.0 till 6, scoped only to 3 cmdlets

- Enter-PSHostProcess
- Get-ChildItem
- Get-Process

Create a merged version of this markdown files

```powershell
cd ./PowerShell-Doc
Merge-MarkdownHelp -Path @("3.0", "4.0", "5.0", "6") ...
```

## Understanding and cleaning the merged version

In the result files, you will notice few new features.

### applicable key

It can show up in one of 2 places in yaml metadata: 
- In the top-level metadata
- In the parameter metadata

You can read more about it at [Merge-MarkdownHelp](https://github.com/PowerShell/platyPS/blob/master/docs/Merge-MarkdownHelp.md) doc.

### !!!

You will find `!!!` marker in the merge of text blocks that has some differences between the versions.

You should clean them up by editing the markdown.
Resolve the merges to make the text blocks suitable for the usage with all versions of the help.

### Example duplications

All examples simply get combined into the single view.
They should be de-duplicated by the help author.

## Creating help for specific version

Now you can create separate xmls for different versions from the single source

Here is an example for 3.0

```powershell
New-ExternalHelp -ApplicableTag 3.0 ...
```

You can use `Get-HelpPreview` cmdlet to check out how the help will look and what parameters will be presented.
Compare it to the original markdown for these versions.

**Congratulation, you just learn how to use combined versions in a single markdown file!**
