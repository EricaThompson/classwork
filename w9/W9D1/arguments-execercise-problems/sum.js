// const sum = function(num) {
//     argumentsArray = Array.from(arguments)
//     return argumentsArray.reduce((acc, el) => acc + el)
// }


const sum = function (num) {
    argumentsArray = [...arguments];
    return argumentsArray.reduce((acc, el) => acc + el)
    
}

// console.log(sum(1, 2, 3, 4)) // === 10;
// console.log(sum(1, 2, 3, 4, 5)) // === 15;
