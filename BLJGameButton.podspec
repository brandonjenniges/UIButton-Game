Pod::Spec.new do |s|
  s.name = 'BLJGameButton'
  s.version = '0.1'
  s.license = 'MIT'
  s.homepage = 'http://www.brandon-asahi.com'
  s.summary = 'Simple button class that can be used in an Objective-C based trivia game.'
  s.authors = { 'Brandon Jenniges' => 'brandon.jenniges@icloud.com' }
  s.source = { :git => 'https://github.com/steveholt55/BLJGameButton.git', :tag => s.version }

  s.ios.deployment_target = '7.0'

  s.source_files = 'Classes/*'

  s.requires_arc = true
end