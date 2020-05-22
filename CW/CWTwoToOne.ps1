<#
	Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters.
	a = "xyaabbbccccdefww"
	b = "xxxxyyyyabklmopq"
	longest(a, b) -> "abcdefklmopqwxy"

	a = "abcdefghijklmnopqrstuvwxyz"
	longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"
#>
function longest($a1, $a2)
{
    return($c = (([string]::Concat($a1,$a2)).ToCharArray() | Sort-Object -Unique) -join "")   
}

$a1 = "xyaabbbccccdefww"
$a2 = "xxxxyyyyabklmopqz"

longest $a1 $a2

