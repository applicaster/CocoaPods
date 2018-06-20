Pod::Spec.new do |s|
  s.name             = "ZappLoginPlugins"
  s.version          = '3.1.6'
  s.summary          = "ZappLoginPlugins"
  s.description      = <<-DESC
                        ZappLoginPlugins container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappLoginPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappLoginPlugins_Framework_3.1.6_0ad040ad15b349cbee61e8caef1ba63748718d4a.zip"
  }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.default_subspec = 'Base'
  s.static_framework = true

  # required for all subspecs
  s.subspec 'Base' do |base|
    base.xcconfig =  { 'SWIFT_VERSION' => '4.1',
      'ENABLE_BITCODE' => 'YES'
    }
    base.dependency 'ZappPlugins'
    base.dependency 'CocoaLumberjack/Swift', '~> 3.4.0'
    base.dependency 'AFNetworking', '~> 3.2.0'
    base.vendored_frameworks = 'ZappLoginPluginBase.framework'
  end

  #--------------SUBSPECS--------------

  s.subspec 'OpenID' do |openid|
    openid.vendored_frameworks = 'ZappLoginPluginOpenID.framework'
    openid.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                                    }
    openid.dependency 'ZappLoginPlugins/Base'
    openid.dependency 'Locksmith'
    openid.dependency 'AppAuth'
    openid.dependency 'Toaster'
  end

  s.subspec 'OpenIDSevenPass' do |openidsevenpass|
    openidsevenpass.vendored_frameworks = 'ZappLoginPluginOpenIDSevenPass.framework'
    openidsevenpass.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                                    }
    openidsevenpass.resources = [
      'ZappLoginPluginOpenIDSevenPass.framework/*.nib',
      'ZappLoginPluginOpenIDSevenPass.framework/*.bundle',
      'ZappLoginPluginOpenIDSevenPass.framework/*.caf',
      'ZappLoginPluginOpenIDSevenPass.framework/*.aiff',
      'ZappLoginPluginOpenIDSevenPass.framework/*.png',
      'ZappLoginPluginOpenIDSevenPass.framework/*.jpg',
      'ZappLoginPluginOpenIDSevenPass.framework/*.jpeg'
    ]
    openidsevenpass.dependency 'ZappLoginPlugins/OpenID'
  end

  s.subspec 'FacebookLogin' do |facebookLogin|
    facebookLogin.vendored_frameworks = 'ZappLoginPluginFacebook.framework'
    facebookLogin.xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ACCOUNT_KIT=1',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -DACCOUNT_KIT',
      'ENABLE_BITCODE' => 'YES'
    }
    facebookLogin.resources = [
      'ZappLoginPluginFacebook.framework/*.nib',
      'ZappLoginPluginFacebook.framework/*.bundle',
      'ZappLoginPluginFacebook.framework/*.caf',
      'ZappLoginPluginFacebook.framework/*.aiff',
      'ZappLoginPluginFacebook.framework/*.png',
      'ZappLoginPluginFacebook.framework/*.jpg',
      'ZappLoginPluginFacebook.framework/*.jpeg'
    ]
    facebookLogin.dependency 'ZappLoginPlugins/Base'
    facebookLogin.dependency 'ApplicasterUIKit'
    facebookLogin.dependency 'FBSDKCoreKit', '~> 4.33.0'
    facebookLogin.dependency 'ApplicasterSDK', '~> 6.4.0'

  end

  s.subspec 'MedcomGo' do |medcomGo|
    medcomGo.vendored_frameworks = 'ZappLoginPluginMedcomGo.framework'
    medcomGo.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                                    }
    medcomGo.resources = [
      'ZappLoginPluginMedcomGo.framework/*.nib',
      'ZappLoginPluginMedcomGo.framework/*.bundle',
      'ZappLoginPluginMedcomGo.framework/*.caf',
      'ZappLoginPluginMedcomGo.framework/*.aiff',
      'ZappLoginPluginMedcomGo.framework/*.png',
      'ZappLoginPluginMedcomGo.framework/*.jpg',
      'ZappLoginPluginMedcomGo.framework/*.jpeg'
    ]
    medcomGo.dependency 'ZappLoginPlugins/Base'
    medcomGo.dependency 'ApplicasterSDK', '~> 6.4.0'
  end

  s.subspec 'Jpost' do |jpost|
    jpost.vendored_frameworks = 'ZappLoginPluginJpost.framework'
    jpost.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                                    }
    jpost.resources = [
      'ZappLoginPluginJpost.framework/*.nib',
      'ZappLoginPluginJpost.framework/*.bundle',
      'ZappLoginPluginJpost.framework/*.caf',
      'ZappLoginPluginJpost.framework/*.aiff',
      'ZappLoginPluginJpost.framework/*.png',
      'ZappLoginPluginJpost.framework/*.jpg',
      'ZappLoginPluginJpost.framework/*.jpeg'
    ]
    jpost.dependency 'ZappLoginPlugins/Base'
    jpost.dependency 'ApplicasterUIKit'
    jpost.dependency 'ApplicasterSDK', '~> 6.4.0'
  end

  s.subspec 'CloudPass' do |cloudPass|
    cloudPass.vendored_frameworks = 'ZappLoginPluginCloudPass.framework'
    cloudPass.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                                    }
    cloudPass.resources = [
      'ZappLoginPluginCloudPass.framework/*.nib',
      'ZappLoginPluginCloudPass.framework/*.bundle',
      'ZappLoginPluginCloudPass.framework/*.caf',
      'ZappLoginPluginCloudPass.framework/*.aiff',
      'ZappLoginPluginCloudPass.framework/*.png',
      'ZappLoginPluginCloudPass.framework/*.jpg',
      'ZappLoginPluginCloudPass.framework/*.jpeg'
    ]
    cloudPass.dependency 'ZappLoginPlugins/Base'
    cloudPass.dependency 'ApplicasterSDK', '~> 6.4.0'
  end

  s.subspec 'AdobeAccessEnabler' do |adobeAccessEnabler|
    adobeAccessEnabler.vendored_frameworks = 'ZappLoginPluginAdobeAccessEnabler.framework'
    adobeAccessEnabler.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                                      'ENABLE_BITCODE' => 'YES'
                                    }
    adobeAccessEnabler.resources = [
      'ZappLoginPluginAdobeAccessEnabler.framework/*.nib',
      'ZappLoginPluginAdobeAccessEnabler.framework/*.bundle',
      'ZappLoginPluginClZappLoginPluginAdobeAccessEnableroudPass.framework/*.caf',
      'ZappLoginPluginAdobeAccessEnabler.framework/*.aiff',
      'ZappLoginPluginAdobeAccessEnabler.framework/*.png',
      'ZappLoginPluginAdobeAccessEnabler.framework/*.jpg',
      'ZappLoginPluginAdobeAccessEnabler.framework/*.jpeg'
    ]
    adobeAccessEnabler.dependency 'ZappLoginPlugins/Base'
    adobeAccessEnabler.dependency 'ApplicasterSDK'
    adobeAccessEnabler.dependency 'AccessEnabler'
  end
end
