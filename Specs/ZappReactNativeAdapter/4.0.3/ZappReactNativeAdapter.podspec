Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '4.0.3'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_4.0.3_5c0bbe4dbd46340fd814c9d6ba9b6a3e51bc9c90.zip"
  }
  s.platform     = :ios, '9.0'

  s.requires_arc = true
  s.default_subspec = 'Default'
  s.static_framework = true

  #--------------SUBSPECS--------------

  s.subspec 'Default' do |default|
    default.vendored_frameworks = 'ZappReactNativeAdapter.framework'
    default.xcconfig =  {
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '4.2',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    default.dependency 'ZappPlugins', '~> 7.0.0'
    default.dependency 'ApplicasterSDK', '~> 8.0.0'
    default.dependency 'ZappPushPluginsSDK', '~> 6.0.0'
    default.dependency 'ZappLoginPluginsSDK', '~> 6.0.0'

  end

end
