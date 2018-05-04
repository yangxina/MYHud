

Pod::Spec.new do |s|
  s.name             = 'MBHud'
  s.version          = '1.2.0'
  s.summary          = 'A short description of MBHud.'


  s.homepage         = 'https://github.com/yangxina/MYHud'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangxin' => 'yangxin@tzpt.com' }
  s.source           = { :git => 'https://github.com/yangxina/MBHud.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MBHud/Classes/**/*'
  
   s.resource_bundles = {
     'MBHud' => ['MBHud/Assets/**/*.png']
   }
  s.requires_arc = true

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MBProgressHUD'
end


  