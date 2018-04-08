# Add about topic

You can leverage platyPS to add [about topics](https://technet.microsoft.com/en-us/library/hh847856.aspx) to your module.

## Add for the markdown

Pick the name for the topic you want to write, i.e. `about_greetings`
Put it in the same folder as the cmdlets documentation.

*Note: here and later, `...` in the code means that you need to complete the codesnippet*

```
New-MarkdownAboutHelp -AboutName greetings ...
```

## Replace the template text

Populate the documentation with few sentences.
Replace all placeholders `{{...}}` with some text or remove them, if not applicable.

## Re-generate MAML XML

```
New-ExternalHelp ...
```

You should see `about_greetings.help.txt` in the output information.

## Trying it out

Re-load the module and try to get the output of the created topic.

```
...
Get-Help about_greetings
```

You can always edit the markdown for the about topic and re-generate it.
Markdown now can be viewed as the source of thruth for your documentation.

Congratulations, you just learn how to use platyPS with about topics!
