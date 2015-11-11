Pod::Spec.new do |s|
  s.name = 'BLJGameButton'
  s.version = '0.2'
  s.license = 'MIT'
  s.homepage = 'http://www.brandon-asahi.com'
  s.summary = 'Simple UIButton extension that can be used in a trivia style game.'
  s.authors = { 'Brandon Jenniges' => 'brandon.jenniges@icloud.com' }
  s.source = { :git => 'https://github.com/steveholt55/UIButton-Game.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/*'

  s.requires_arc = true
end
