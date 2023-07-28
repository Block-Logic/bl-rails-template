# RAILS TEMPLATE 
This repo is a template to be used for creating new projects.

## System dependencies                                                                                                                                  
  - Ruby (see .ruby-version)
  - Rails 7.0+
  - Hotwire (Stimulus+Turbo)
  - MySQL 8+  
  - Redis 6.2+

## Template Notes
After creating your new project, you will need to touch some files to customize the new environment. Those files are:  

- config/deploy/* to provide the host names for each deployment target.
- config/deploy.rb to update the project name & other deployment settings.
- Look at `config/initializers/site_information.rb` and make changes as needed to the constant values shown there.
- Perform a 'find all' to look for 'fmaprivacy' and 'fmadata'. Modify those values as needed.
- You will also need to go through the views to remove/change some of the current boiler plate, logo, etc.
- This template is configured for the free version of Sidekiq. Review the Gemfile and config/routes.rb files if you are using Sidekiq Pro.
- Change the name of the application in `config/application.rb`. Change FMAdataTemplate to something meaningful.

NOTE: If you find other files that need to be touched after creating a new project please come back here and update the documentation!

## Configuration and installation

### Tailwind

In order to use Tailwind make sure to run `bundle exec rails assets:precompile`.
For development environment use `./bin/dev` instead of `rails s` for running the app. It runs both puma and tailwind
that detects changes to css. 

### Credentials 

See Keybase for master.key for this project.
To generate credentials, run:
  - in vim use `EDITOR=editor_of_your_choice rails credentials:edit`
Enter your keys, save and exit. See config/credentials.example.yml for examples.

Set up locking strategy during configuration (https://github.com/plataformatec/devise/wiki/How-To:-Add-:lockable-to-Users).

### Gems

Run `bundle install` command to install Rails and all other Gem dependencies. 

### Database creation

MySQL 8 is the recommended version to run on your machine. Once you have MySQL running, run:
  `cp config/database.example.yml config/database.yml`
and configure your config/database.yml to your machine's MySQL configuration. Minor edits should only be necessary.

Run rake db:setup to create and migrate the database from schema (db/schema.rb).

### Attribute Encryption
Attribute encryption on models is required for any attribute that contains personal information or other sensitive data. The default solution is the attr_encrypted gem.

## Other dependencies 

### Redis
in order for Sidekiq to work it requires redis version of at least 6.2.

## Tests 

### How to run the test suite
run `bundle exec rails assets:precompile` before the first test run

  `rails test` # run all tests
  `rails test test/models` # run all tests from specific directory
  `rails test test/models/article_test.rb` # run all tests from specific file
  `rails test test/models/article_test.rb:6` # run specific test and line

### Factories
Please use factories, eg. `User` factory when you need users, more info in 'test/factories/user.rb'


## Deployment
Follow the instructions for Capistrano
