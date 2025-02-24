console.log(greeting('Chandan pandey'))
// data()
function greeting(name){
    return "Welcome "+name;
}

function hlo(){
    console.log("Hello World");
}

function cube(n){
    return n*n*n;
}
// Function Expression
const data=function(){
    console.log("Data Fetched sucessfully")
}
hlo();
const result = greeting("Lokesh Reddy");
console.log(result)
console.log("Cube Of 5",cube(5));
console.log(data)