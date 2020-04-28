function findSum($n) {
  $sum = 0
  for($i=0; $i -le $n; $i++){
    if(($i%3 -eq 0) -or ($i%5 -eq 0)){
      $sum += $i
    }
  }
  return $sum
}

findSum 10 | Write-Host