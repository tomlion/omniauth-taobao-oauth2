# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-taobao-oauth2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = "Youcai Qian"
  gem.email         = "qycpublic@gmail.com"
  gem.description   = %q{OmniAuth Oauth2 strategy for taobao.com.}
  gem.summary       = %q{OmniAuth Oauth2 strategy for taobao.com.}
  gem.homepage      = "https://github.com/tomlion/omniauth-taobao-oauth2"
  
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-taobao-oauth2"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::TaobaoOAuth2::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end
