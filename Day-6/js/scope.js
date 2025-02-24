let name = "test"; //global variable
 
function hello(){
    if(true){
    let a = 10;
    const b =20
    var c = 30;
 
    console.log('Inside the function Let ',a);
    console.log('Inside the function Const ',b);
    console.log('Inside the function Var ',c);
    }
    // console.log('Outside the function Let ',a);
    // console.log('Outside the function Const ',b);
    console.log('Outside the function Var ',c);
 
}
hello();
function myFunction(){
    let a = 10;
    const b =20
    var c = 30;
 
    console.log('Let ',a);
    console.log('Const ',b);
    console.log('Var ',c);
}
myFunction()
//Can't acess functional variables outside the function
//console.log('Outside the function Let ',a);
//console.log('Outside the function Const ',b);
//console.log('Outside the function Var ',c);
 
 