<#
This function should test if the factor is a factor of base.

Return true if it is a factor or false if it is not.
#>

function CheckForFactor([int] $base, [int] $factor) {
  if ($base%$factor -eq 0){
    $true
  }
  else{
    $false
  }
}

$b = 15
$f = 3

CheckForFactor $b $f