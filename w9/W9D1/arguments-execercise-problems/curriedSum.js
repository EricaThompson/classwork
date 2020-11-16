function curriedSum(num) {
    const numbers = [];
    return function _curriedSum(n) {
        numbers.push(n);
        if (numbers.length === num) {
            return numbers.reduce((acc, el) => acc + el);
        } else {
            return _curriedSum;
        }
    };
}

const sum = curriedSum(4);
console.log(sum(5)(30)(20)(1)); // => 56