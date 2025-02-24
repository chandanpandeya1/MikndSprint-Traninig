const array = [1,2,3,4,5,6,7,8,9,10];
// I Want to create new array by multiplying all elemnts using 3

const resultArray = [];
for(let num of array){
    resultArray.push(num*3);
}

// console.log(resultArray)

const newArray = array.map((num) =>num*3);
// console.log(newArray);

const evenArray = array.filter((num)=>num%2===0);
console.log(evenArray);

//if first match found it will return that number
//if no match found then it will return undefined
const found = array.find((num)=>num===6);
console.log(found ? 'Found : ' + found: 'Not Found');

//find index of match (if found then return index of that number)
//if not found then it will return -1
const foundIndex = array.findIndex((num)=>num===6);
console.log(foundIndex ? 'Found index : ' + foundIndex: 'Not Found');


const arr =[1, 2, 3, 2, 4, 5, 2, 6, 7, 2, 8, 2,2,3];
const count = arr.filter(num => num==2).length;
console.log("Number : 2 "+count)

array.forEach(num => console.log(num));

result = [35,67,89,65,99];
console.log(result.every(num=>num>=35));
console.log(result.some(num=>num>=90));

console.log([[1,2],2,[3,4,5]].flat())

console.log(array.includes(5));

console.log("Lokesh Reddy".indexOf("k"));
console.log("Lokesh Reddy".lastIndexOf("d"));
console.log(("Lokesh Reddy").toLowerCase().indexOf("h"));
console.log("Lokesh Reddy".lastIndexOf('l'));

const myarray = [10,20,30,40,50];
console.log(myarray.slice(2)); //starts from 2 till last
console.log(myarray.slice(2,4)); //starts from 2 till idex 3
 
myarray.splice(3,0,60); //Start index, delete count,no of elements
console.log(myarray);
 
myarray.splice(3,1);
console.log("After deletes: ",myarray);
 
//Replace 70 by 35
myarray.splice(3,1,35);
console.log("After replace: ",myarray);
 