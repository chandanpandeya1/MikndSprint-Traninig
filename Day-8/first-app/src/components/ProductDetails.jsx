import axios from "axios";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
 
function ProductDetails() {
    const { id } = useParams();
    const [product, setProduct] = useState({});
 
    const fetchData = async () => {
        try {
            const res = await axios.get("https://dummyjson.com/products/" + id);
            // console.log(res);
            setProduct(res.data);
        } catch (error) {
            console.log(error);
        }
    };
 
    useEffect(() => {
        fetchData();
    }, [id]);
 
    return (
        <div>
            {product && (
                <div>
                    <h3>{product.title}</h3>
                    <img src={product.thumbnail} alt="product-img" />
                    <p>Category: {product.category}</p>
                    <p>Price: ${product.price}</p>
                    <p>{product.description}</p>
                    <button className="btn btn-primary">Add To Cart</button>
                    <h5>Reviews</h5>
                    {product.reviews &&
                        product.reviews.map((review) => (
                            <div key={review.id}>
                                <p>
                                    Rating: {review.rating} <br />
                                    Comment: {review.comment} <br />
                                    User Name: {review.reviewername} <br />
                                    Date: {review.date} <br />
                                </p>
                                <hr />
                            </div>
                        ))}
                </div>
            )}
        </div>
    );
}
 
export default ProductDetails;
 