Pod::Spec.new do |s|
    s.name         = 'IvanKit'
    s.version      = '1.0.0'
    s.summary      = 'An easy way to use Encoder and Decoder'
    s.homepage     = "https://github.com/Ivan126/IvanKit"
    s.license      = 'MIT'
    s.authors      = {"Ivan126" => "Ivan_1314@126.com" } 
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/Ivan126/IvanKit.git', :tag => s.version}
    s.source_files = 'IvanKit/**/*.{h,m}'
    s.requires_arc = true
end