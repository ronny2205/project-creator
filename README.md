# README


This is a Ruby on Rails application that allows potential customers to create a free demo project by completing a form.
I decided to use Ruby on Rails because I'm familiar with the framework and it makes it easy to quickly build a web app.

The app uses the Postgresql database, which I frequently use.

I used the ‘simple_form’ ruby gem to build the form. It’s easy to use and makes the code a bit more readable than using the rails form helpers.

The styling uses Bootstrap. I selected this because it's one of the most common css frameworks.

To set up the HTTP server, I created a single controller to keep things simple. 
This "CustomersController" includes 3 actions:
"new" - displays the form 
"create" - performs server side validations and then creates a database record for the new project
"confirmation" - displays project creation confirmation

I created the "Customer" model with the fields included in the form.

There are two html.erb files, one for the form ("new.html.erb") and one for the confirmation ("confirmation.html.erb).

I used rails validations to check that all fields are required, that passwords are at least 6 characters, and that the email is in a valid format. I also built a custom validation (in the "Customer" model) to check whether the email address is already in the database.

Ideally the form would have more validations such as: 
Length limit on fields, handling spaces and special charcaters, etc.

The app is deployed at:
https://project-creator-ronny.herokuapp.com/

Time breakdown:
Planning - half an hour
Building the back-end (controller, model, validations…) - 2 hours
Building the front-end (views, form, styling) - 2 hours
Documenting - half an hour



