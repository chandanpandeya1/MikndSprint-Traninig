const array=[];
const array1=[1,2,3,4,5,6,7];
const array2= new Array(4);

console.log(array.length);
console.log(array1.length);
console.log(array2.length);

array.push(10);
array.push(20);
array.push(30);
console.log("After Push",array)
array.unshift(5);
array.unshift(2);
console.log("After unshift",array)
console.log(array.pop());
console.log("After pop",array)
console.log(array.shift());
console.log("After shift",array)
