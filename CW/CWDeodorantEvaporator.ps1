function evaporator([double]$content, [double]$evapperday, [double]$threshold) {
  $result = 0;
  $percentage = 100;  
  while ($percentage -gt $threshold) {
    $percentage = $percentage - $percentage * ($evapperday / 100);
    $result += 1;
  }
  return $result;
}