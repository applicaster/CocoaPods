Pod::Spec.new do |s|
  s.name             = "ZappReactNativeAdapter"
  s.version = '4.0.1'
  s.summary          = "ZappReactNativeAdapter"
  s.description      = <<-DESC
                        ZappReactNativeAdapter container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappReactNativeAdapter-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappReactNativeAdapter_Framework_4.0.1_2b082b55c3c48747902e923f9356ab65bd794357.zip"
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
