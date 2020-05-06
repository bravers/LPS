<#
Given an array/list [] of n integers , find maximum triplet sum in the array Without duplications.
maxTriSum ({3,2,6,8,2,3}) ==> return (17)
maxTriSum ({2,1,8,0,6,4,8,6,2,4}) ==> return (18)
maxTriSum ({-7,12,-7,29,-5,0,-7,0,0,29}) ==> return (41)
#>


function maxTriSum ([int[]]$numbers)
{	
	$new_array = $numbers | Select-Object -Unique | Sort-Object -Descending
	return $new_array[0] + $new_array[1] + $new_array[2]
}

$array = @(2,9,13,10,5,2,9,5)

maxTriSum $array