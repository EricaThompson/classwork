// function curriedSum(num) {
//     const numbers = [];
//     return function _curriedSum(n) {
//         numbers.push(n);
//         if (numbers.length === num) {
//             return numbers.reduce((acc, el) => acc + el);
//         } else {
//             return _curriedSum;
//         }
//     };
// }

// const sum = curriedSum(4);
// console.log(sum(5)(30)(20)(1)); // => 56

Function.prototype.curry = function(numArgs){
    const args = [];
    const that = this;

    return function _curriedFunction(arg){
        args.push(arg);
        if (args.length === numArgs){
            return that(...args);

        } else {
            return _curriedFunction;
        }
    };

}

const sum = function (num) {
    argumentsArray = [...arguments];
    return argumentsArray.reduce((acc, el) => acc + el)
}


const tree = sum.curry(4);
console.log(tree(5)(30)(20)(1)); // => 56