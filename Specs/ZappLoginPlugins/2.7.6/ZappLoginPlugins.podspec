Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '2.7.6'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_2.7.6_0d7e2b04e39aeab745c08884e303029d61bcd6c7.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Base'

  # required for all subspecs
  s.subspec 'Base' do |base|
    base.xcconfig =  { 'SWIFT_VERSION' => '4.0' }
    base.dependency 'ZappPlugins'
    base.dependency 'ZappAppConnector'
    base.dependency 'ZappHelpers'
    base.dependency 'CocoaLumberjack/Swift', '~> 3.4.0'
    base.dependency 'AFNetworking', '~> 3.1.0'
    base.vendored_frameworks = 'ZappLoginPluginBase.framework'
  end

  #--------------SUBSPECS--------------

  s.subspec 'OpenID' do |openid|
    openid.vendored_frameworks = 'ZappLoginPluginOpenID.framework'
    openid.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

    openid.dependency 'ZappLoginPlugins/Base'
    openid.dependency 'Locksmith'
    openid.dependency 'AppAuth'
    openid.dependency 'Toaster'
  end

  s.subspec 'OpenIDSevenPass' do |openidsevenpass|
    openidsevenpass.vendored_frameworks = 'ZappLoginPluginOpenIDSevenPass.framework'
    openidsevenpass.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

    openidsevenpass.dependency 'ZappLoginPlugins/OpenID'
  end

  s.subspec 'FacebookLogin' do |facebookLogin|
    facebookLogin.vendored_frameworks = 'ZappLoginPluginFacebook.framework'

    facebookLogin.xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ACCOUNT_KIT=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DACCOUNT_KIT'
    }

    facebookLogin.dependency 'ZappLoginPlugins/Base'
    facebookLogin.dependency 'ApplicasterUIKit', '~> 1.7.0'
    facebookLogin.dependency 'FBSDKCoreKit', '~> 4.31.0'
    facebookLogin.dependency 'ApplicasterSDK'

  end

  s.subspec 'MedcomGo' do |medcomGo|
    medcomGo.vendored_frameworks = 'ZappLoginPluginMedcomGo.framework'

    medcomGo.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

    medcomGo.dependency 'ZappLoginPlugins/Base'
    medcomGo.dependency 'ApplicasterSDK'
  end
end
