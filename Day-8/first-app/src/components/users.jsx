import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function Users() {
    const [users, setUsers] = useState([]);

    const fetchData = async () => {
        try {
            const res = await axios.get("http://localhost:3000/users");
            // console.log(res.data);
            //setUsers(res.data.users);
            setUsers(res.data)
        } catch (error) {
            console.log(error);
        }
    };

    //write logic for deleteUser and trigger API
    const deleteUser=async (id)=>{
        try {
            const resp = await axios.delete(`http://localhost:3000/users/${id}`);
            if(resp.status===200){
                alert("user deleted successfully");
                setUsers(users.filter(user=>user.id!==id)); //this line will update state here, no need to trigger API
              }
                
        } catch (error) {
            console.log(error);
            
        }
    }

    // This effect will execute only once when the component loads
    useEffect(() => {
        fetchData();
    }, []);

    return (
        <div>
            <h3>User's List</h3>
            <table className="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        users.map(user => (
                            <tr>
                                <td>{user.id}</td>
                                <td>{user.name}</td>
                                <td>{user.email}</td>
                                <td>{user.address}</td>

                                <td>
                                    <button className="btn btn-danger" onClick={()=>deleteUser(user.id)}>X</button>
                                </td>
                            </tr>

                        ))
                    }
                </tbody>
            </table>
        </div>
    );
}

export default Users;