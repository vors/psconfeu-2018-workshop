# Multiple languages

One of the benefits of using MAML XML help instead of comment based help is
support for multiple languages.
How does platyPS handle it?

## 1. Write platyPS markdown

PlatyPS schema currently only supports English version of the header sections.
I.e. you would always need to use English version of the word `SYNOPSIS`.

But that doesn't mean that all the content cannot be authored in another language!
You can keep all the metadata in English (i.e. `yaml` parameters section and headers),
but all the content could be authored in any language.

## 2. Change UICulture for tests

To properly test out the multiple language support, you would need to switch back and forth
between locales.
It can be done on the system-wide level, but it requires a restart and not very convenient.
There is an easier way.

**Example - switching from English locale German locale**

`Get-Help` uses value of `Get-UICulture` to determine the language for help look-up.

```powershell
# store the original locale
$english = Get-UICulture
# find German in the list of all locales
$german = [CultureInfo]::GetCultures(1) | ? {$_.Name -like 'de'}
# switch to the german locale for Get-Help
[CultureInfo]::set_CurrentUICulture($german)
# do something interesting, like
Get-Help
# switch back to the original locale
[CultureInfo]::set_CurrentUICulture($english)
```

Remember that you need to `-Force`-import the module after changing the locale for change to take place.
Otherwise `Get-Help` would show a cached version.

## 3. Try it

Copy your English markdown file into a separate folder and localize it.
Keep the metadata in English. 
Create automation that outputs the external help in appropriate locale.

```powershell
New-ExternalHelp -OutputPath de ...
Import-Module -Force ...
Get-Help ...
```
Switch to the different locale and test out the localized version of the help.

**Congratulation, you just learn how to use platyPS for multiple languages!**

### [Advanced topic 1: multiple versions in a single file](05-ApplicableTags.md)
