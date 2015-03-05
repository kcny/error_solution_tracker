def bug_archive_attributes(overrides = {})
  {
    title: "Rbenv",
    error: " You have already activated rspec-core 3.1.7, but your Gemfile requires rspec-core 2.99.2. Prepending `bundle exec` to your command may solve this. (Gem::LoadError)",
    solution: "Prepend `bundle exec` to command to solve this",
    note: "This is a temporary fix. Need to find a permanent one."
  }.merge(overrides)
end

def user_attributes(overrides = {})
  {
    full_name: "Anesu Hove",
    email: "nesu@example.com",
    password_digest: "passhexpass"
  }.merge(overrides)
end