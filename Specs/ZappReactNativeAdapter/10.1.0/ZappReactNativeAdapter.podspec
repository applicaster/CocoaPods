Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '10.1.0'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_10.1.0_a3234bf3b3ed5559b2b6f54968bcfb7a22ca657b.zip"
  }
  s.platform     = :ios, '10.0'

  s.requires_arc = true
  s.default_subspec = 'Default'
  s.static_framework = true

  #--------------SUBSPECS--------------

  s.subspec 'Default' do |default|
    default.vendored_frameworks = 'ZappReactNativeAdapter.framework'
    default.xcconfig =  {
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    default.dependency 'ZappPlugins', '~> 11.0.0'
    default.dependency 'ApplicasterSDK', '~> 12.0.0'

  end

end
