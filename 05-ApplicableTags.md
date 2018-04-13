# Multiple versions in a single file

PlatyPS has an ability to combine documentation for multiple version of the module
in a single markdown file.

[This MS Office documentation team blog](https://techcommunity.microsoft.com/t5/IT-Resources-Training-Blog/How-Microsoft-used-PlatyPS-to-evergreen-and-open-source-Office/ba-p/179949) explains the reasons

> The Merging of multiple articles into a single article has several benefits. One of the biggest is that it shines a spotlight on the content and forces an action to address issues and ‘clean up’ content. This results in much cleaner help content and customers win. It also results in better search experience because you will only see one result per cmdlet as opposed to 4 or 5 nearly identical topics.

## 1. Merge

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

## 2. Understand and clean the merged version

Compare merged document to the original ones.
In the result files, you will notice few new features.

### 2.1 applicable key

You will see it in 2 places. Both in yaml metadata: 
- In the top-level
- In the parameter

Can you guess what it means?
Check yourself by reading [Merge-MarkdownHelp](https://github.com/PowerShell/platyPS/blob/master/docs/Merge-MarkdownHelp.md) doc.

### 2.3 !!!

You will find `!!!` marker in the merge of text blocks that has some difference between the versions.

You should clean them up by editing the markdown.
Resolve them and make text blocks appropriate for reading with all versions of the help.

### 2.4 Example duplications

All examples simply get combined into the single view.
They should be de-duplicated.

## 3. Create an external help for a specific version

Now you can create separate xmls for different versions from the single source

```powershell
New-ExternalHelp -ApplicableTag 3.0 ...
```

You can use `Get-HelpPreview` cmdlet to check out how the help will look and what parameters will be presented.
Compare it to the original markdown for this version.

**Congratulation, you just learn how to use combined versions in a single markdown file!**

### [Advanced topic 2: multiple languages](06-Localization.md)