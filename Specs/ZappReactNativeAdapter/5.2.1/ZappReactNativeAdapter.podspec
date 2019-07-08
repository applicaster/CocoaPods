Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '5.2.1'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_5.2.1_306496b10f151b6562b6774b5f84b9ec250aa460.zip"
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
                  'SWIFT_VERSION' => '4.2',
                  'OTHER_CFLAGS'  => '-fembed-bitcode'
                }

    default.dependency 'ZappPlugins', '~> 8.0.0'
    default.dependency 'ApplicasterSDK', '~> 9.0.0'
    default.dependency 'ZappPushPluginsSDK', '~> 7.0.0'
    default.dependency 'ZappLoginPluginsSDK', '~> 7.0.0'

  end

end
