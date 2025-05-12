## Testing Overview
##### https://www.youtube.com/watch?v=vQQKIyAHPI4&list=PLS6F722u-R6Ik3fbeLXbSclWkT6Qsp9ng&index=2
#### rails console -e test

### System Tests
These tests evaluate the entire application as a whole to ensure it meets the specified requirements and works correctly in a complete, integrated environment.

### Integration Tests
These tests focus on the interactions between different modules or components within the application to ensure they work together seamlessly.

#### Docker

1. docker buildx build -t railstestapp:latest .

## Factory instead of Fixtures

###Rspec
1. gem 'rspec-rails'
2. rails g rspec:install
#### Rspec Model
1.  rails g rspec:model user
### Rspec Controller
1. rails g rspec:controller user 

### Factory
1. gem 'factory_bot_rails'

#### Project
rails generate model Product name:string price:decimal
rails generate model Transaction user:references product:references quantity:integer total_price:decimal

rails g rspec:model Transaction