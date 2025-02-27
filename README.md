# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Working on

Generate the project:
```
rails new rrello --css=sass --javascript=esbuild --database=postgresql
```

### Adding the Boards

Generate the board model:
```
rails generate model Board title:string background:string
```
Add validations to [model](app/models/board.rb) and [migration](db/migrate/20250224234754_create_boards.rb) files.

Add system tests to [boards_test.rb](test/system/boards_test.rb) and fixtures to [boards.yml](test/fixtures/boards.yml)

Create the CRUD controller:
```
bin/rails g controller Boards
```

Add controller resources to [routes.rb](config/routes.rb)

And create the views in [app/views/boards](app/views/boards)

Load fixtures data:
```
bin/rails db:fixtures:load
```
Or edit [db/seeds.rb](db/seeds.rb) file to make `bin/rails db:seed` equivalent.

## Resources

- [Ruby on Rails Guides](https://guides.rubyonrails.org/)

- [Turbo Rails Tutorial](https://www.hotrails.dev/turbo-rails)

- [BEM Methodology](https://en.bem.info/methodology/)
