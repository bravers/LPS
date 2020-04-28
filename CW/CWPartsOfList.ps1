function part-list
{
    [OutputType([string])]
    Param ([string[]]$arr)
    
    for($i = 0; $i -lt ($arr.Length - 1); $i++){
      $result += "({0}, {1})" -f ($arr[0..$i] -join " "), ($arr[($i + 1)..$arr.Length] -join " ")
    }
    return $result
}