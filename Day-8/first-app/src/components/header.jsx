import { Link } from "react-router-dom";

function Header() {

    return (
        // jsx can have only one parent element. so we have to wrap in case of more than one element
        <ul className="nav justify-content-center">
            <li className="nav-item">
                <Link className="nav-link active" aria-current="page" to="home">Home</Link>
            </li>
            <li className="nav-item">
                <Link className="nav-link" to="about">About</Link>
            </li>
            <li className="nav-item">
                <Link className="nav-link" to="contact">Contacts</Link>
            </li>
            <li className="nav-item">
            <Link className="nav-link" to="users">Users</Link>
            </li>
            <li className="nav-item">
            <Link className="nav-link" to="login">Login</Link>
            </li>
            <li className="nav-item">
            <Link className="nav-link" to="register">Register</Link>
            </li>
            <li className="nav-item">
            <Link className="nav-link" to="products">Products</Link>
            </li>
            
        </ul>
    )
}
export default Header;