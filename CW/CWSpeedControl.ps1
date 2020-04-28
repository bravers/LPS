function Get-Gps($s, $x) 
{   
    $max_speed = 0
    if ($x.Length -le 1){
        return 0
    }
    else{
        for ($i = 1; $i -lt $x.Length; $i++){
            $delta_distance = $x[$i+1] - $x[$i]
            $current_speed = (3600 * $delta_distance)/$s
            if ($max_speed -lt $current_speed){
                $max_speed = $current_speed
            }
        }
        return [Math]::floor($max_speed)
    }
}


$x = 0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25
$s = 15
$result=Get-Gps $s $x | Write-Host 