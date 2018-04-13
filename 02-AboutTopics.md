# About topics

You can leverage platyPS to add [about topics](https://technet.microsoft.com/en-us/library/hh847856.aspx) to your module.

## 1. Create markdown

Pick the name for the topic you want to write, i.e. `about_greetings`.
Put it in the same folder as the cmdlets documentation.

*Note: here and later, `...` in the code means that you need to complete the codesnippets*

```powershell
New-MarkdownAboutHelp -AboutName greetings ...
```

## 2. Replace the template text

Populate the documentation with few sentences.
Replace all placeholders `{{...}}` with some text or remove them, if not applicable.

## 3. Re-generate external help

```
New-ExternalHelp ...
```

You should see `about_greetings.help.txt` in the output information.

## 4. Try it out

Re-load the module and try to get the output of the created topic.

```
...
Get-Help about_greetings
```

You can always edit the markdown for the about topic and re-generate it.
Markdown now can be viewed as the source of truth for your documentation.

**Congratulations, you just learn how to use platyPS with about topics!**

### [Next: update the documentation](03-Update.md)
