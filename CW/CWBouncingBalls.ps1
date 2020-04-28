function bouncing-ball
{
    [OutputType([int])]
    Param ([double]$h, [double]$bounce, [double]$window)
	
	if ($h -lt 0 -or $bounce -le 0 -or $bounce -ge 1 -or $window -ge $h){
    	return -1
	}
	else{
		$h_of_bounce=$h
		$count = 0
    	while ($h_of_bounce -gt $window){
			$count++
			$h_of_bounce*=$bounce
			if ($h_of_bounce -gt $window){
		    	$count++
		     }
		 }
     	return $count
    }
    else{
		return -1
    }
}
$h = 3
$bounce = 0.66
$window = 1.5
bouncing-ball $h $bounce $window

<#
 testing 3 0.66 1.5 3
 testing 10 0.6 10 -1
 testing 40 1 10 -1 
#>