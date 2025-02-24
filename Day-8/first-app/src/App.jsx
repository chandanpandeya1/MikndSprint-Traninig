// import { useState } from 'react'
// import reactLogo from './assets/react.svg'
// import viteLogo from '/vite.svg'
// import './App.css'

import { BrowserRouter,Routes,Route } from 'react-router-dom'
import Footer from "./components/Footer"
import Header from "./components/header"
import Home from './components/home'
import About from './components/about'
import Contact from './components/contact'
import Users from './components/users'
import Login from './components/login'
import Products from './components/products'
import ProductDetails from './components/ProductDetails'
import Register from './components/register'
function App() {
  // const [count, setCount] = useState(0)

  return (
    <BrowserRouter>

      <div className='container'>
        <h1>this is my first app</h1>
        <Header />
      
        <Routes>
          <Route path='home' element={<Home />} />
          <Route path='about' element={<About  />} />
          <Route path='contact' element={<Contact/>} />
          <Route path='users' element={<Users />} />
          <Route path='login' element={<Login />} />
          <Route path='register' element={<Register />} />
          <Route path='products' element={<Products />} />
          <Route path='products/:id' element={<ProductDetails />} />
      
          
        </Routes>
        <Footer />
        </div>
    </BrowserRouter>
  )
}



export default App
