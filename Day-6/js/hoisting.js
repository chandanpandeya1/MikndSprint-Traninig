console.log(a); // undefined
var a=10; // 10
console.log(a);

// console.log(b); // hosting is not possible
// let b=10;
// console.log(b);

//if you want to use for callback use annonymous function
const test = function(){
    console.log('Test Triggered')
}

// for debugging, for recursion, use named function
const myFunction = function test(){
    console.log('Test ')
}

test()
myFunction()
