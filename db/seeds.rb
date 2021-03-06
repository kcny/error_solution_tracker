# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BugArchive.create!([
    {
    title: "Rbenv",
    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
    solution: " Prepend `bundle exec` to command to solve this",
    note: " This is a temporary fix. Need to find a permanent one."
  },
    {
    title: "RSpec",
    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
    solution: " Prepend `bundle exec` to command to solve this",
    note: " This is a temporary fix. Need to find a permanent one."
  },
    {
    title: "Rails",
    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
    solution: " Prepend `bundle exec` to command to solve this",
    note: " This is a temporary fix. Need to find a permanent one."
  },
    {
    title: "Bootstrap",
    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
    solution: " Prepend `bundle exec` to command to solve this",
    note: " This is a temporary fix. Need to find a permanent one."
  }
])


User.create!([
  {
    full_name: "Zebron Zimuto",
    email: "zebron@example.com",
    password: "passpass"
  },
  {
    full_name: "Anesu Hove",
    email: "anesu@example.com",
    password: "passpass"
  }
  ])