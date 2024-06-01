# :leaves: Jungle :leaves:

## Project Description
A mini e-commerce application built with Rails 6.1 where you can browse and purchase plants by category, with secure checkout through Stripe. Admins can access a dashboard to monitor product status, and easily add or remove items from the inventory. 

### Tech Stack!
#### Languages, Frameworks, & Database 
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/bootstrap-%238511FA.svg?style=for-the-badge&logo=bootstrap&logoColor=white)
#### API
![Stripe](https://camo.githubusercontent.com/5e4b6e2a0f13eb75580bf5722978fc93cba16e27e2b99ffa6cee2eb869cd9fe7/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f7374726970652d77686974652e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d737472697065266c6f676f436f6c6f723d23363737326535)
#### Testing
![Rspec](https://camo.githubusercontent.com/4c2c7f1128538efd0210679e876fb797a4a7f503f1d036e5720f6503b24474a2/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f2d72737065632d6c69676874626c75653f7374796c653d666f722d7468652d6261646765266c6f676f3d72756279266c6f676f436f6c6f723d726564)
![Cypress](https://camo.githubusercontent.com/e578d2a49fdf27e421a2ce7140298e017f4ff34ede0ce56fc6f5efd7a54642bf/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f2d637970726573732d2532334535453545353f7374796c653d666f722d7468652d6261646765266c6f676f3d63797072657373266c6f676f436f6c6f723d303538613565)
#### Others 
![Github](https://camo.githubusercontent.com/410d86e43f847d3f6e3027fa6f0c2fb7641d893fa601d863a943eac968c41890/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6769746875622d2532333132313031312e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d676974687562266c6f676f436f6c6f723d7768697465)
![Eslint](https://camo.githubusercontent.com/9f4268803442f14ba048f49d8a6ac594465d6a61682f3048fddf18540196d38f/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f45534c696e742d3442333236333f7374796c653d666f722d7468652d6261646765266c6f676f3d65736c696e74266c6f676f436f6c6f723d7768697465)
![VSC](https://camo.githubusercontent.com/998382ebc9a32162128b00b597ea488192df024fd015e5edec001fe29fcb93a6/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f56697375616c25323053747564696f253230436f64652d3030373864372e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d76697375616c2d73747564696f2d636f6465266c6f676f436f6c6f723d7768697465)
![Linux](https://camo.githubusercontent.com/7eefb2ba052806d8a9ce69863c2eeb3b03cd5935ead7bd2e9245ae2e705a1adf/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4c696e75782d4643433632343f7374796c653d666f722d7468652d6261646765266c6f676f3d6c696e7578266c6f676f436f6c6f723d626c61636b)

# Project Overview! :rotating_light:
## Landing Page :exclamation:
Users are able to navigate through the app through this page
![Landing page for Jungle](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/Landingpage.png)

## Admin Dashboard :exclamation:
Once an admin is logged in, they're able to access the admin dashboard to view how many products there are and are able to add more to the store!
![Admin dashboard](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/Admin%20dashboard%20summary.png)
![Adding a product](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/Create%20a%20product%20page.png)

## Product Display :exclamation:
Once a product is selected, information is displayed to the user showing a short description, how many are in stock, and an add to cart button!
![Product showcase](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/product%20information.png)

## Cart Display :exclamation:
A simple cart display allows users to preview their selection and also allows them to modify the quantity from here.
![Cart Display](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/Cart%20display%20page.png)

## Finalizing purchase and Order Review :exclamation:
Finally, once users confirm their purchase, they're redirected to Stripe for payment and an order summary is sent out!
![Stripe Api in action](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/Swipe%20api%20checkout.png)
![Order Summary](https://github.com/Daniel-pho/Jungle-rails/blob/master/docs/Order%20Summary.png)
## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
