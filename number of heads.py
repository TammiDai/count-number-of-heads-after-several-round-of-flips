# Solution 1
# because only perfect square number positions can be filpped by even times, therefore we only need to
# write a function that calculate how many perfect square numbers<=n
def square(k):
    if k<=0:
        print("please enter a positive number.")
    i=1
    count=0
    while i<=k:
        if pow(i,0.5)%1==0:
            count+=1
        i+=1
    return count


# Solution 2
# Brute Force althorithm to present the final status of coins after the last filps
def heads(n):
    head=True  #heads set to True
    tail=False  #tails set to False
    coins=[head]*n
    for i in range(2,n+1):
        j=1
        while i*j<=n:
            coins[i*j-1]= not coins[i*j-1]  # if true, make the opposite status
            j+=1
            
    return coins
        
    