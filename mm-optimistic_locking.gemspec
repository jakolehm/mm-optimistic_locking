# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "mm-optimistic_locking"
  s.version     = "0.0.5"
  s.authors     = ["Andy Lindeman"]
  s.email       = ["andy@highgroove.com"]
  s.homepage    = "http://github.com/highgroove/mm-optimistic_locking"
  s.summary     = %q{Implements optimistic locking (similar to ActiveRecord) for MongoMapper}
  s.description = %q{Before a record is saved, mm-optimistic_locking will check if it has been modified by another process. If so, a StaleDocumentError will be raised. The object can be reloaded and resaved after the conflict has been resolved.}

  s.files         = [
    ".gitignore",
    "Gemfile",
    "Rakefile",
    "README.md",
    "lib/mm-optimistic_locking.rb",
    "lib/mongo_mapper/stale_document_error.rb",
    "lib/mongo_mapper/plugins/optimistic_locking.rb",
    "lib/mongo_mapper/plugins/optimistic_locking/querying_interceptor.rb",
    "mm-optimistic_locking.gemspec"
  ]

  s.test_files    = [
    "spec/spec_helper.rb",
    "spec/integration/optimistic_locking_spec.rb"
  ]

  s.executables   = [
  ]

  s.require_paths = ["lib"]

  s.add_dependency 'mongo_mapper', '>=0.11.1'
  s.add_dependency 'activesupport', '~>3.2'
  
  s.add_dependency 'mongo', '>=1.6.2'
  s.add_dependency 'bson', '>=1.6.2'
  s.add_dependency 'bson_ext', '>=1.6.2'

  s.add_development_dependency 'rake', '~>0.8.7'
  s.add_development_dependency 'rspec', '~>2.6.0'
  s.add_development_dependency 'database_cleaner', '~>0.6.7'
end
