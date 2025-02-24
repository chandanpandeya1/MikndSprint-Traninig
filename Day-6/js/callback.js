// Pass function as argument its called callback
 
let data = [];
const fetchData=(cb)=>{
    //Assume its fetching data from some API
    setTimeout(()=>{
        data = [1,2,3,4,5,6,7];
        console.log("Data fetched successfully");
        cb(); //Trigger the callback
    },2000)
}
const displayDate=()=>{
    console.log("Display function ",data);
}
 
fetchData(displayDate) //pasing function as argument 
//which consider here callback
 