Array.prototype.myEach = function(callback) {
    for (let i = 0; i < this.length; i++) {
        callback(this[i])
    }
}

let arr = [1, 4, 2, 7, 8]

// arr.myEach(function(el) {
//     console.log(el + 1)
// });

Array.prototype.myMap = function(callback) {
    const newArray = []
    this.myEach(function(el) {
        newArray.push(callback(el));
    });
    return newArray;
};

// console.log(arr.myMap(function(el) {
//     return el + 2;
// }));

// arr.reduce(callback( accumulator, currentValue[, index[, array]] )[, initialValue])
Array.prototype.myReduce = function(callback[, initialValue]){
    if (initialValue) {
        this.myEach(callback(1,2))
    } 
}


//without initialValue
// callback = function (acc, el) {
//     return acc + el;
// }
// without initialValue
arr = [1,2,3]
console.log(arr.myReduce(function (acc, el) {
    return acc + el;
})); // => 6

// with initialValue
console.log(arr.myReduce(function (acc, el) {
    return acc + el;
}, 25)); // => 31
