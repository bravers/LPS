function Past([int] $h, [int] $m, [int] $s) {
  $hours = $h * 3600000
  $minets = $m * 60000
  $seconds = $s * 1000
  return $hours+$minets+$seconds
}