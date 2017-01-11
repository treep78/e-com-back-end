# Mod Squad Back End for E-Commerce

- Deployed Back-end: https://gentle-hamlet-35507.herokuapp.com
- Deployed Front-end: https://treep78.github.io/front-end-e-com/
- Back-end Repo: https://github.com/treep78/e-com-back-end
- Front-end Repo: https://github.com/treep78/front-end-e-com

# Back-end Summary

This back end, consisting of a Node.js app and a mongo database, receives calls from and sends data to a front end store. Most data requires a user to sign-in to access including adding items to a cart, modifying that cart, placing orders, and viewing past orders. Most data is serialized to restrict access to unnecessary or snesative data. A user does not be signed in, however, to view items for sale on the site. The app uses stripe for it's payment process in order to keep data secure.

# Technologies Utilized:

- Node.js
- Express
- MongoDB
- Mongoose
- Javascript
- Json
- Curl
- Heroku
- Git
- mLab
- Stripe

# Databases:

- /products (catalogue)
- /items (card)
- /orders (order history)
- /users

# User Stories

- A user can sign-up
- A user can sign-in
- A user can change-password
- A user can sign-out
- Anyone can view products
- A user can add items to cart
- A user can view items in cart
- A user can change item quantity in cart
- A user can remove items from cart
- A user can submit an order
- A user can pay for an order
- A user can view past orders

# Future Improvements

Given more time it might be good to see if any unnecessary or unsecure data is being sent to the front end. If so, it would be good to add additional serialization to prevent that type of data from being sent.
