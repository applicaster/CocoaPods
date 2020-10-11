Pod::Spec.new do |s|
  s.name  = "SOM-Display"
  s.version = '0.1.1'
  s.platform  = :ios, '10.0'
  s.summary = "SOM-Display"
  s.description = "SOM-Display container."
  s.homepage  = "https://github.com/applicaster-plugins/SOM-Display-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source  = { :git => "git@github.com:applicaster-plugins/SOM-Display-iOS.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.static_framework = true

  s.source_files = 'SOM-Display/**/*.{h,m,swift}'
  s.exclude_files = 'SOM-Display/SOM_Display.h'
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                    'ENABLE_BITCODE' => 'YES',
                    'SWIFT_VERSION' => '5.1'
              }
              
  s.dependency 'ZappPlugins'
  s.dependency 'SevenOneAds', '= 0.10.4'

end
