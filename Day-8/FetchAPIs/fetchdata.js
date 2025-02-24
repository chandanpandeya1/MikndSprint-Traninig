const resp = fetch('https://jsonplaceholder.typicode.com/users')

resp
.then(resp=>resp.json())
.then(json=>console.log(json))
.catch(err=>console.log(err))
.finally(()=>console.log('Promise Executed'))

//if it is resolved it'll go to then path, if not it'll go to catch part and finally will execute everytime

