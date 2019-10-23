# Jungle

Jungle is a mini e-commerce application built with Rails 4.2.

## Features

- Users can register, login and logout.
- Users can see all the products as well as filtering by categories.
- Users can add available items to their cart, remove items, and pay.
- Admins have access to a dashboard of the products and categories.
- Admins can add/remove products and add categories.

## Final Product

!["Home page"](https://github.com/JCyan90/jungle-rails/blob/master/docs/Homepage.png?raw=true)
!["Page of a product"](https://github.com/JCyan90/jungle-rails/blob/master/docs/Show_product_page.png?raw=true)
!["Signup form"](https://github.com/JCyan90/jungle-rails/blob/master/docs/Sign_up_form.png?raw=true)
!["Cart page"](https://github.com/JCyan90/jungle-rails/blob/master/docs/Cart_page.png?raw=true)
!["Order confirmation page"](https://github.com/JCyan90/jungle-rails/blob/master/docs/Order_complete_page.png?raw=true)
!["Admin All Products page"](https://github.com/JCyan90/jungle-rails/blob/master/docs/Order_complete_page.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Enjoy your visit!

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Capybara
