# Solution 1
# because only perfect square number positions can be filpped by even times, therefore we only need to
# write a function that calculate how many perfect square numbers<=n
square.num=function(k){
  if(k<=0) stop("please enter a positive number")
  i=1
  count=0
  while(i<=k){
    if(sqrt(i) %% 1 == 0){
      count=count+1
    }
    i=i+1
  }
  count
}


#Solution 2
# Brute Force althorithm to present the final status of coins after the last filps
heads=function(n){
  Head=1   #heads set to 1
  Tail=0   #tails set to 0
  coins=rep(Head,n)  # default set of n heads at first round
  for ( i in 2:n ){
    j=1
    while(i*j<=n){
      coins[i*j]=!coins[i*j]  # if true make the opposite status
      j=j+1
    }
  }
  return(coins)
  # check whether the final status of coins are correct, the positions should be perfect square
  # which(heads(n)==TRUE)
  # sum(heads(n))
}
  
  


