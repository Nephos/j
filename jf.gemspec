require_relative 'lib/version'

Gem::Specification.new do |s|
  s.name        = "jf"
  s.version     = Jf::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Akash Manohar", "Arthur Poulet"]
  s.email       = ["akash@akash.im", "arthur.poulet@cryptolab.net"]
  s.homepage    = "http://akash.im/j"
  s.summary     = "jf task manager - v" + s.version.to_s
  s.description = %q{jf, stands for jotf and is a simple command-line task manager. Inspired by t- task manager which is written in python. The binary for is called jot. You can alias it to jf.}
  
  s.add_dependency "rainbow", "~> 1.1"
  s.add_dependency "pry", "~> 0.10"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
