Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '2.6.0'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_2.6.0_b5ab66e58d7047cf64b3e827ac7b9fb46353285a.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Base'

  # required for all subspecs

  s.subspec 'Base' do |base|
    base.dependency 'ZappLoginPluginsBase'
    base.dependency 'ZappPlugins'
    base.dependency 'ZappHelpers'
    base.dependency 'ZappAppConnector'

    base.xcconfig = {
      'SWIFT_VERSION' => '4.0'
    }
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
    facebookLogin.dependency 'ZappLoginPlugins/Base'

    facebookLogin.xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ACCOUNT_KIT=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DACCOUNT_KIT'
    }

    facebookLogin.dependency 'ZappLoginPlugins/Base'
    facebookLogin.dependency 'ApplicasterUIKit', '~> 1.7.0'
    facebookLogin.dependency 'FBSDKCoreKit', '~> 4.19.0'
  end
end
