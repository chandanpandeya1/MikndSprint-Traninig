const print=()=>console.log('Sample');
const greeting=(name)=>console.log('Welcome '+name)
const add=(num1,num2)=>num1+num2; //implict return

const calculate=(num1,num2)=>{
    const a=num1+num2;
    const b=num1*num2;
    return a*b; //return explicity
}

print();
greeting('Lokesh Reddy');
console.log('add: ',add(3,4));
console.log('calculate: ',calculate(3,4))