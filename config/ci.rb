# Continuous Integration configuration for running tests and checks

CI.run do
  # Run tests
  system "bin/rails test"

  # Run system tests
  system "bin/rails test:system"

  # Run RuboCop
  system "bin/rubocop"
end

