# Postlight Employee API

The employee directory API for the Postlight code challenge  submission for the Full Stack Engineer position. The frontend for this project can be found [here](https://github.com/jtx007/postlight-employee-directory)

## Getting Started

### Prerequistes

This api uses Ruby on Rails to serve a RESTful API to the frontend. I'm using Ruby version 3.0.0 and Rails version 6.1.4. I'm also using PostGres App for Mac as a database GUI so make sure that you have that and PostgresSQL installed on your machine as well.

### Tech Stack
- Ruby v3.0.0
- Rails v6.1.4
- PostGresSQL
- ActiveRecord


### Development

In order to work with this API, turn on your PostGres app instance and then enter the following into your CLI:

```
bundle install 
bundle update
rake db:create
rake db:migrate
rake db:seed
rails s
```

The api will now be served on http://localhost:3000/. 

### Schema

Here is a visualization of the current database schema. This is subject to change as time goes on

![Database Schema](Schema.png)

- I used the [Jbuilder](https://github.com/rails/jbuilder) gem to build out the JSON responses and setup relations between employees and their locations, titles, and departments. The db is setup in a way where as the office expands, a company can easily add more options for locations, job titles, and departments.
- Employee Result were paginated and managed by the [Pagy](https://github.com/ddnexus/pagy) gem with 10 results per page. 

### Relevant endpoints

 - GET api/v1/employees
 - GET api/v1/employees/:id
 - POST api/v1/employees
 - PUT api/v1/employees/:id
 - DELETE api/v1/employees/:id
 - GET api/v1/locations
 - GET api/v1/departments
 - GET api/v1/titles  






