class Product {

    constructor(id, name, price, category) {

        this.id = id;

        this.name = name;

        this.price = price;

        this.category = category;

    }

}
 
class Cart {

    constructor() {

        this.cart = [];

    }
 
    addItem(product) {

        // By default quantity will be 1

        const existingItem = this.cart.find(item => item.product.id === product.id);

        if (existingItem) {

            existingItem.quantity += 1;

        } else {

            this.cart.push({ product, quantity: 1 });

        }

    }
 
    removeItem(product) {

        this.cart = this.cart.filter(item => item.product.id !== product.id);

    }
 
    updateItem(product) {

        const existingItem = this.cart.find(item => item.product.id === product.id);

        if (existingItem) {

            existingItem.quantity += 1;

        }

    }
 
    showTotalAmount() {

        return this.cart.reduce((total, item) => total + (item.product.price * item.quantity), 0);

    }

}
 
const cart = new Cart();

cart.addItem(new Product(1, 'Pen', 10, 'Stationary'));

cart.addItem(new Product(2, 'Notebook', 50, 'Stationary'));

cart.updateItem(new Product(1, 'Pen', 10, 'Stationary'));

cart.removeItem(new Product(2, 'Notebook', 50, 'Stationary'));
 
console.log(cart.showTotalAmount()); // Output: 20

 