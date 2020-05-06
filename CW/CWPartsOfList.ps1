function part-list
{
    [OutputType([string])]
    Param ([string[]]$arr)
    
    for($i = 0; $i -lt ($arr.Length - 1); $i++){
      $result += "({0}, {1})" -f ($arr[0..$i] -join " "), ($arr[($i + 1)..$arr.Length] -join " ")
    }
    return $result
}
$a = "az", "toto", "picaro", "zone", "kiwi"
part-list $a


<#
    $a="I", "wish", "I", "hadn't", "come"
    $c="(I, wish I hadn't come)(I wish, I hadn't come)(I wish I, hadn't come)(I wish I hadn't, come)"
    testing $a $c

    $a = "cdIw", "tzIy", "xDu", "rThG"
    $c = "(cdIw, tzIy xDu rThG)(cdIw tzIy, xDu rThG)(cdIw tzIy xDu, rThG)"
    testing $a $c


#>