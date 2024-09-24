# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'soft-assert'
  s.version     = '1.0.0'
  s.date        = '2024-09-18'
  s.summary     = 'Soft assertions for Ruby'
  s.description = 'A set of assertion methods that do not stop the execution of the test when they fail.'
  s.authors     = ['Ashitha Rao', 'Sumit Ghosh']
  s.files       = ['lib/soft_assert.rb']
  s.homepage    =
    'https://github.com/AshithaRao/soft-assert-ruby/blob/main/README.md'
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.7.0'

  # Add your dependencies here
  s.add_dependency 'minitest', '~> 5.20.0'
  s.add_dependency 'test-unit', '~> 3.6.1'
end
