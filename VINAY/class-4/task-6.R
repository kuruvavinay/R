power = function(base,power){
  value = 1;
  for(i in 1:power){
    value = value * base
  }
  return(value)
}
print(power(2,10))