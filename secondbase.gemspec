# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{secondbase}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["karledurante"]
  s.date = %q{2011-03-08}
  s.description = %q{Secondbase provides support to Rails to create a homogeneous for a dual database project.  Using the rake tasks already familiar to you, this gem enables Rails to work with two primary databases, instead of just one.}
  s.email = %q{kdurante@customink.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/generators/secondbase/USAGE",
    "lib/generators/secondbase/migration_generator.rb",
    "lib/generators/secondbase/templates/migration.rb",
    "lib/secondbase.rb",
    "lib/secondbase/fixtures.rb",
    "lib/secondbase/model.rb",
    "lib/secondbase/railtie.rb",
    "lib/secondbase/rake_method_chain.rb",
    "lib/secondbase/tasks.rb",
    "rails_generators/secondbase/USAGE",
    "rails_generators/secondbase/secondbase_migration_generator.rb",
    "rails_generators/secondbase/templates/migration.rb",
    "secondbase.gemspec",
    "test/helper.rb",
    "test/test_secondbase.rb"
  ]
  s.homepage = %q{http://github.com/karledurante/secondbase}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Allow Rails manage second database in your projects}
  s.test_files = [
    "test/helper.rb",
    "test/test_secondbase.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.0.0"])
  end
end

