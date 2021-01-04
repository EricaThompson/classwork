// Write a function, lucasNumberMemo(n), that takes in a number.
// The function should return the n-th number of the Lucas Sequence.
// The 0-th number of the Lucas Sequence is 2.
// The 1-st number of the Lucas Sequence is 1
// To generate the next number of the sequence, we add up the previous two numbers.
//
// For example, the sequence begins: 2, 1, 3, 4, 7, 11, ...
//
// Solve this recursively with memoization.
//
// Examples:
//
// lucasNumberMemo(0)   // => 2
// lucasNumberMemo(1)   // => 1
// lucasNumberMemo(40)  // => 228826127
// lucasNumberMemo(41)  // => 370248451
// lucasNumberMemo(42)  // => 599074578
function lucasNumberMemo(n, memo = {}) {
    // if (n in memo) return memo[n];
    // // let sequence = [2, 1, 3, 4, 7, 11]
    
    // if (n === 0) return 2;
    // if (n === 1) return 1;
    
    // // sequence.map((num, idx) =>{
    // //     memo[idx] = num
    // // })

    // let answer = memo[n - 1] + memo[n - 2] + lucasNumberMemo(n - 1, memo)
    
    // memo[n] = answer
    
    // return answer
    
    // // if (n in memo) return memo[n];

    if (n in memo) return memo[n];

    if (n === 0) return 2;
    if (n === 1) return 1;

    memo[n] = lucasNumberMemo(n - 1, memo) + lucasNumberMemo(n - 2, memo)

    return memo[n]

}

// console.log(lucasNumberMemo(18))

function lucasNumberRecursive(n){
    if (n === 0) return 2;
    if (n === 1) return 1;

    let sequence = [2, 1]

    if (n - 1 in sequence) return sequence[sequence.length - 1] + sequence[sequence.length - 2]
    // let distance = n - sequence.length //for 3, n[1] + n[0], place at n - 1 = 2
    let num1 = sequence[n - 2]
    let num2 = sequence[n - 3]
    let answer = num1 + num2

    sequence[n - 1] = answer
    

    return answer

}

// console.log(lucasNumberRecursive(3))


function lucasNumberRecursiveSolution(n){
    if (n === 0) return 2;
    if (n === 1) return 1;

    return lucasNumberRecursiveSolution(n-1) + lucasNumberRecursiveSolution(n-2)

}

// console.log(lucasNumberRecursiveSolution(18))


// Write a function, minChange(coins, amount), that accepts an array of coin values
// and a target amount as arguments. The method should the minimum number of coins needed
// to make the target amount. A coin value can be used multiple times.
//
// After you pass the first 3 examples, you'll likely need to memoize your code 
// in order to pass the 4th example in a decent runtime.
//
// Examples:
//  
// minChange([1, 2, 5], 11)         // => 3, because 5 + 5 + 1 = 11
// minChange([1, 4, 5], 8))         // => 2, because 4 + 4 = 8
// minChange([1, 5, 10, 25], 15)    // => 2, because 10 + 5 = 15
// minChange([1, 5, 10, 25], 100)   // => 4, because 25 + 25 + 25 + 25 = 100
function minChange(coins, amount, memo = {}) {

    

}


module.exports = {
    lucasNumberMemo,
    minChange
};