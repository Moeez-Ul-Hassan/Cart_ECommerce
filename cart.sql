-----------SQL Schema:

Users (
    user_id VARCHAR PRIMARY KEY,
    email VARCHAR UNIQUE NOT NULL,
    contact_no VARCHAR NOT NULL,
    address TEXT,
)

Cart (
    cart_id VARCHAR PRIMARY KEY,
    user_id VARCHAR UNIQUE NOT NULL,
    status VARCHAR NOT NULL,
    coupon VARCHAR

    FOREIGN KEY (user_id)
    REFERENCES Users(user_id)
)

Products (
    product_id VARCHAR PRIMARY KEY,
    name VARCHAR NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    discount DECIMAL(5,2) DEFAULT 0,
    stock INT NOT NULL
)

CartItems (
    item_id VARCHAR PRIMARY KEY,
    cart_id VARCHAR NOT NULL,
    product_id VARCHAR NOT NULL,
    quantity INT NOT NULL,
    is_selected BOOLEAN DEFAULT TRUE

    FOREIGN KEY (cart_id)
    REFERENCES Cart(cart_id),

    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
)
