Pod::Spec.new do |s|  
  s.name             = "IvanKit"  
  s.version          = "1.0.0"  
  s.summary          = "A Encoder and Decoder used on iOS."  
  s.description      = <<-DESC  
                       It is a Encoder and Decoder used on iOS, which implement by Objective-C.  
                       DESC  
  s.homepage         = "https://github.com/Ivan126/IvanKit"  
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"  
  s.license          = 'MIT'  
  s.author           = { "Ivan126" => "Ivan_1314@126.com" }  
  s.source           = { :git => "https://github.com/Ivan126/IvanKit.git", :tag => s.version.to_s }  
  # s.social_media_url = 'https://twitter.com/NAME'  
  
  s.platform     = :ios, '4.3'  
  # s.ios.deployment_target = '5.0'  
  # s.osx.deployment_target = '10.7'  
  s.requires_arc = true  
  
  s.source_files = 'IvanKit/*'  
  # s.resources = 'Assets'  
  
  # s.ios.exclude_files = 'Classes/osx'  
  # s.osx.exclude_files = 'Classes/ios'  
  # s.public_header_files = 'Classes/**/*.h'  
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'  
  
end  