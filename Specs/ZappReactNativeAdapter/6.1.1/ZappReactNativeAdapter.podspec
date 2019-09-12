Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '6.1.1'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_6.1.1_a23e3c3f0976e054daac4c19780708c1d8e20103.zip"
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
                  'SWIFT_VERSION' => '5.0',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    default.dependency 'ZappPlugins', '~> 9.2.3'
    default.dependency 'ApplicasterSDK', '~> 10.2.1'
    default.dependency 'ZappPushPluginsSDK', '~> 8.0.2'
    default.dependency 'ZappLoginPluginsSDK', '~> 8.0.2'
  end

end
