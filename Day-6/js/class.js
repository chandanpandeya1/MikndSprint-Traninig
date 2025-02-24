class Account{
    constructor(AccNo,holdername,balance){
        this.AccNo=AccNo;
        this.holdername=holdername;
        this.balance=balance;
    }
    getbalance(){
        return this.balance;
    }
    deposit(amount){
        this.balance+=amount;
        console.log(`${amount} is credited to the account no *******${this.AccNo.slice(5)} Available Balance ${this.balance}`);
    }
    withdraw(amount){
        if (this.balance > amount){
            this.balance -= amount;
            console.log(`${amount} is debited from your account No *******${this.AccNo.slice(5)} Available Balance ${this.balance}`);  
        }
        else{
            console.log("No sufficient balance available");
           
        }
    }
}
 
const acc1 = new Account('1900129876', "Fiza Naaz", 100000000);
acc1.deposit(12000000);
acc1.withdraw(12000);
 
 