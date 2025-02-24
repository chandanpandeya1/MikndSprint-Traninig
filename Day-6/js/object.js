const person = {
    firstName:"Duvvuru",
    lastName:"Lokesh Reddy",
    email:"lokeshreddy2910@gmail.com",
    age:45,
    address:{
        street: "Xyz",
        city:"AndraPradesh",
        zipcode:524126,
        county:"India"
    },

    greeting: function(){
        console.log(`Welcome ${this.firstName}${this,this.lastName}`)
    }
}

console.log("Address : ",person.address);
person.greeting();
console.log(person['email']);
for(let key in person){
    console.log(person[key]);
}
 