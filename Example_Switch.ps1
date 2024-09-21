<#
    .synopsis
        Example of using "Switch"
    .description
        Example of using Switch (aka Cases) in your powershell code
    .link
        https://github.com/lmw94002/powershell-examples
    .notes
        This should be the starter template for all your scripts. 
        https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_switch?view=powershell-5.1
    .example
        PS> .\Example_Switch.ps1 
#>

$myInput1 = 1
$myInput2 = 2
$myInput3 = 3
$myInput4 = 4

write-host "`n-- EXAMPLE : Simple Match --"
switch ($myInput3)
{
    1 {"It is one."}
    2 {"It is two."}
    3 {"It is three."}
    4 {"It is four."}
}

write-host "`n-- EXAMPLE : Multiple Matches --"
switch ($myInput3)
{
    1 {"It is one."}
    2 {"It is two."}
    3 {"It is three."}
    4 {"It is four."}
    3 {"It is three, AGAIN."}
}

write-host "`n-- EXAMPLE : Breaking out of the evaluation process --"
switch ($myInput3)
{
    1 {"It is one."}
    2 {"It is two."}
    3 {"It is three.";break}
    4 {"It is four."}
    3 {"It is three, AGAIN."}
}

write-host "`n-- EXAMPLE : Multiple Inputs in Array/Hash --"
switch ($myInput4, $myInput2)
{
    1 {"It is one." }
    2 {"It is two." }
    3 {"It is three." }
    4 {"It is four." }
}

write-host "`n-- EXAMPLE : Adding default action --"
switch ("A")
{
    1 {"It is one." }
    2 {"It is two." }
    3 {"It is three." }
    4 {"It is four." }
    default {"No Match"}
}

write-host "`n-- EXAMPLE : WildCard Matching --"
switch -wildcard ("123456789")
{
    1 {"It is one." }
    2 {"It is two." }
    3 {"It is three." }
    4 {"It is four." }
    123* {"123 and more."}
    default {"No Match"}
}

write-host "`n-- EXAMPLE : RegEx Matching --"
$myURI = "https://www.google.com"
switch -regex ($myURI)
{
    '^http\://.*$' {"tcp80" }
    '^ftp\://.*$' {"tcp21" }
    '^https\://.*$' {"tcp443" }
    default {"No Match"}
}

