function Login() {
    return (  
        <div>
            <h3 className="text-center p-2 text-bg-secondary">Login Page</h3>
            <div class="mb-3">
            <label class="form-label">Email address</label>
            <input type="email" class="form-control" placeholder="name@example.com"/>
            </div>
            <label class="form-label">Password</label>
            <input type="password" class="form-control" aria-describedby="passwordHelpBlock"/>
            <div id="passwordHelpBlock" class="form-text">
                Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
            </div>
            <button className="btn btn-primary mt-3 w-100">Login</button>
        </div>
    );
}
 
export default Login;