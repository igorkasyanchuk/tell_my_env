require_relative "lib/tell_my_env/version"

Gem::Specification.new do |spec|
  spec.name        = "tell_my_env"
  spec.version     = TellMyEnv::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/tell_my_env"
  spec.summary     = "See in rails console env in which you are working."
  spec.description = "See in rails console env in which you are working."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails"
  spec.add_development_dependency "pry"
end
