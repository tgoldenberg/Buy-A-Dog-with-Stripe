# stripe-test
### This is a test for using the Stripe API
***
Here are the gems used
 + devise
 + bourbon
 + haml-rails
 + stripe
 + omniauth-stripe-connect
 + figaro
###
### Basically, this is a test project, but shows some of the capabilities of the Stripe API. If you fork and clone this repo, you can initialize it with your stripe api keys and seed the database. The `charges#controller` splits up the credit card processing into two actions - `create` and `complete`. The create action initializes the customer and their information. Once the product arrives, the customer initiates the complete action, which calls for the customer information and runs the charge. All sensitive information is handled off-site by Stripe, which makes this much easier as well.
###
So this app should help show how credit card purchases can be processed with Strip in 3 ways -
  + as a straight purchase - from the platform to the buyer
  + as a delayed transaction - also from platform to buyer, but processing after a certain event, and
  + as a hosted transaction - from seller to buyer, hosted by the platform, with an `application fee` going to the platform. The final version is a combination of the last two.

###
# Notes
## Please feel free to fork and clone the repo and use the techniques in your own apps. Also check out the excellent ![Stripe documentation](https://stripe.com/docs). 
