import axios from "axios";
import { useState } from "react";
import { useNavigate } from "react-router-dom";

function Register() {

    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [address, setAddress] = useState('');
    const navigate = useNavigate()

    const handleSubmit =async (e)=>{
        e.preventDefault(); //to prevent from default execution
        if(!name || !email || !address){
            alert('All fields are mandatory')
        }else{
            // write logic to call post api to store data using API
            try{
                const uniqueNo= Date.now();
                const userObject={ id: uniqueNo+'', name, email, address};
                const resp = await axios.post('http://localhost:3000/users', userObject);
                if(resp.status===201){
                    alert('User created successfully');
                    navigate('/Users'); //redirect you to users component
                }
                    

            } catch(error){
                console.log(error);
            }
        }
    }




    return (
        <div>
            <h3 className="text-center p-2 text-bg-secondary">Registration Page</h3>
            <form onSubmit={handleSubmit}>
                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" placeholder="John Doe" onChange={(e)=>setName(e.target.value)} />
                </div>

                <div class="mb-3">
                    <label class="form-label">Email address</label>
                    <input type="email" class="form-control" placeholder="john.doe@exmaple.com" onChange={(e)=>setEmail(e.target.value)} />
                </div>

                <div class="mb-3">
                    <label class="form-label">Address</label>
                    <input type="text" class="form-control" placeholder="Address Here" onChange={(e)=>setAddress(e.target.value)} />
                </div>

                <button type="submit" className="btn btn-primary w-100 mt-3">Register Me</button>

            </form>

        </div>
    );
}

export default Register;