import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
 
function Products() {
    const [products, setProducts] = useState([]);
 
    const fetchData = async () => {
        try {
            const res = await axios.get("https://dummyjson.com/products");
            console.log(res);
            setProducts(res.data.products);
        } catch (error) {
            console.log(error);
        }
    };
 
    // This effect will execute only once when the component loads
    useEffect(() => {
        fetchData();
    }, []);
 
    return (
        <div>
            <h3 className="text-center p-2 text-bg-secondary">
                Product's Page
            </h3>
            <div className="product-list row">
                {products.map((product) => (
                    <div
                        key={product.id}
                        className="product-item col-lg-4 col-md-6"
                    >
                        <h4>{product.title}</h4>
                        <Link to={`/products/${product.id}`}>
                        <img src={product.thumbnail} alt={product.title} />
                        </Link>
                        
                        <p>{product.description}</p>
                        <p>Price: ${product.price}</p>
                        <p>Rating: {product.rating}</p>
                        <button className="btn btn-primary">Add To Cart</button>
                    </div>
                ))}
            </div>
        </div>
    );
}
 
export default Products;
 
