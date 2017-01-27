Pod::Spec.new do |s|
  s.name = 'Apsara'
  s.version = '1.0'
  s.platform = :ios, '8.0'
  s.license = 'MIT'
  s.summary = 'Apsara is useful for you!!'
  s.homepage = 'https://github.com/mengheangrat/Apsara'
  s.author = { 'Mengheang Rat' => 'mengheangrat@icloud.com' }
  s.source = { :git => 'https://github.com/mengheangrat/Apsara.git', :tag => '1.0' }

  s.frameworks = 'UIKit', 'Foundation'
  s.social_media_url = 'https://twitter.com/RatMengheang'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Apsara/**/*.{swift}'

end
