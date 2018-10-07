Pod::Spec.new do |s|
  s.name         = "Toaster"
  s.version      = "2.2.0"
  s.summary      = "Toast for Swift"
  s.homepage     = "http://github.com/devxoul/Toaster"
  s.license      = { :type => 'WTPFL', :file => 'LICENSE' }
  s.author       = { "devxoul" => "devxoul@gmail.com" }
  s.source       = { :git => "https://github.com/applicaster/Toaster.git",
                     :tag => "#{s.version}" }
  s.platform     = :ios, '8.0'
  s.source_files = 'Sources/*.{swift,h}'
  s.frameworks   = 'UIKit', 'Foundation', 'QuartzCore'
  s.requires_arc = true

  s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
                 'SWIFT_VERSION' => '4.1',
                 'OTHER_CFLAGS'  => '-fembed-bitcode'
               }
end
