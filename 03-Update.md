# Update the documentation

Here is the best part: you can easily keep your help up-to-date with the changing code.

## 1. Update markdown directly

If you just need to fix a typo or write a better description,
all you need to do is simply edit the markdown and re-generate the help.


```
# make an edit
New-ExternalHelp ...
Get-Help ...
```

## 2. Add new parameter to the existing cmdlet

Let's add new parameter to the `New-Greeting` cmdlet.
For example, we can replace the hardcoded value of `"Hello"` for the greeting,
by a parameter value.

Edit the code in `.psm1` file.
Make a `git commit` (include your `.md` files).

## 3. Update the documentation

Re-load the module and run the command to update the markdown

```
Update-MarkdownHelp -Path ./docs
```

Take a look at the differences between the old markdown file and the new one.

```
git diff
```

Notice the following differences:
- SYNTAX section got auto-updated
- New parameter section appeared and it has the `{{...}}` placeholder for description.

Check that attributes you put on the parameter in `psm1` file correspond to the new parameter yaml metadata.

**Question**: what would `git diff` produce if help is already up-to-date?

## 4. Add new cmdlet

Let's add new cmdlet `Get-Name` which will return a list of names that can be passed to the `New-Greeting`.
Use the same file `Greet.psm1`.
Come up with a couple parameters for it (maybe in different parameter sets?).
Now bootstrap the documentation for this parameter.

```
New-MarkdownHelp ...
```

## 5. Check the help

Re-load the module and check that `Get-Name` got the help populated

```
Get-Help ...
```

**Congratulations, you just learn how to update your help when it's out of date!**

### [Next: Continuous Integration](04-CI.md)
