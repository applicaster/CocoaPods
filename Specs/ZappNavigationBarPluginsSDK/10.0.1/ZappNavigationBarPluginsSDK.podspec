Pod::Spec.new do |s|
  s.name  = "ZappNavigationBarPluginsSDK"
  s.version = '10.0.1'
  s.platform  = :ios, '10.0'
  s.summary = "ZappNavigationBarPluginsSDK"
  s.description = "ZappNavigationBarPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappNavigationBarPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source  = { :git => "git@github.com:applicaster/ZappNavigationBarPluginsSDK-iOS.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.static_framework = false

  s.source_files  = 'ZappNavigationBarPluginsSDK/**/*.{h,m,swift}'
  s.resources = [ 'ZappNavigationBarPluginsSDK/**/*.xib']

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '5.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins'
end
