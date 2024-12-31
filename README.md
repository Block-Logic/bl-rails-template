# RAILS TEMPLATE 
This repo is a template to be used for creating new projects.

## System dependencies                                                                                                                                  
  - Ruby (see .ruby-version)
  - Rails 8.0.1+
  - Hotwire (Stimulus+Turbo)
  - MySQL 8+  
  - Redis 6.2+

## Template Notes
After creating your new project, you will need to touch some files to customize the new environment. Those files are:  

- config/deploy/* to provide the host names for each deployment target.
- config/deploy.rb to update the project name & other deployment settings.
- Look at `config/initializers/site_information.rb` and make changes as needed to the constant values shown there.
- Perform a 'find all' to look for 'bl_rails_template' mentions. Modify those values as needed.
- You will also need to go through the views to remove/change some of the current boiler plate, logo, etc.
- This template is configured for the free version of Sidekiq. Review the Gemfile and config/routes.rb files if you are using Sidekiq Pro.
- Change the name of the application in `config/application.rb`. Change BlRailsTemplate to something meaningful.

NOTE: If you find other files that need to be touched after creating a new project please come back here and update the documentation!

## Configuration and installation

### Credentials 

See Keybase for master.key and development.key for this project.
To edit credentials, run:
  - `EDITOR=editor_of_your_choice rails credentials:edit -e development`

Set up locking strategy during configuration (https://github.com/plataformatec/devise/wiki/How-To:-Add-:lockable-to-Users). 

### Database

This project uses MySQL as a database. Recommended version is v8. Once you have MySQL installed and running, run:
  `cp config/database.yml.sample config/database.yml`
and configure your config/database.yml to your machine's MySQL configuration. Minor edits should only be necessary.

### Attribute Encryption
Attribute encryption on models is required for any attribute that contains personal information or other sensitive data. The default solution is the attr_encrypted gem.

### Gems

Once you have all configuration files and credential keys in place, run `./bin/setup` to install Rails and all other dependencies. 

### Tailwind
In development, run your application with `./bin/dev` script, that will run rails server on default port 3000 with `bin/rails server -p 3000` and will compile the assets on the fly with `bin/rails tailwindcss:watch`. 

## Other dependencies 

### Redis
In order for Sidekiq to work it requires redis version of at least 6.2.

## Tests 

### How to run the test suite
Run `bin/rails test:prepare` before the first test run.

  `rails test` # run all tests
  `rails test test/models` # run all tests from specific directory
  `rails test test/models/article_test.rb` # run all tests from specific file
  `rails test test/models/article_test.rb:6` # run specific test and line

### Factories
Please use factories, eg. `User` factory when you need users, more info in 'test/factories/user.rb'


## Deployment
Follow the instructions for Capistrano
