function f1(){
    console.log('F1 executed')
}
function f2(){
    // console.log('F2 executed')
    setTimeout(()=>console.log('F2 executed'),2000)
}
function f3(){
    console.log('F3 executed')
}
function f4(){
    console.log('F4 executed')
}

f1();f2();f3();f4();