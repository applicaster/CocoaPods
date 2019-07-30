Pod::Spec.new do |s|
  s.name  = "ZappSDK"
  s.version = '11.3.0'
  s.platform  = :ios, '10.0'
  s.summary = "ZappSDK"
  s.description = "ZappSDK framework."
  s.homepage  = "https://github.com/applicaster/ZappSDK-iOS.git"
  s.license = 'CMPS'
	s.author = 'Applicaster LTD.'

  s.source = {
      "http" => "https://dl.bintray.com/applicaster-ltd/pods/ZappSDK.framework.zip"
  }

  s.requires_arc = true
  s.static_framework = false
  s.default_subspec = 'base'

  s.public_header_files = 'ZappSDK/**/*.h'
  s.source_files  = 'ZappSDK/**/*.{h,m,swift}'
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.2',
                'OTHER_CFLAGS'  => '-fembed-bitcode',
                'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/Firebase/**',
                'OTHER_LDFLAGS' => '$(inherited) -objc -framework "FirebaseDynamicLinks" -framework "FirebaseCore"',
                'USER_HEADER_SEARCH_PATHS' => '"$(inherited)" "${PODS_ROOT}"/Firebase/**'
              }

  s.resources = [
		'ZappSDK/Classes/*.plist',
		'ZappSDK/**/*.xib',
		'ZappSDK/**/*.storyboard'
	]

  s.dependency 'ZappPlugins'
  s.dependency 'ComponentsSDK'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ApplicasterUIKit'
  s.dependency 'ZappAnalyticsPluginsSDK'
  s.dependency 'ZappLoginPluginsSDK'
  s.dependency 'ZappPushPluginsSDK'
  s.dependency 'ZappBroadcasterPickerPluginsSDK'
  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'ZappNavigationBarPluginsSDK'
  s.dependency 'ZappRootPluginsSDK'
  s.dependency 'ZappReactNativeAdapter'

  s.dependency 'MBProgressHUD', '= 1.1.0'
  s.dependency 'google-cast-sdk', '= 4.3.3'
  s.dependency 'GSMessages', '= 1.7.2'
  s.dependency 'Firebase'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/DynamicLinks'
  s.dependency 'ReachabilitySwift', '= 4.3.0'
  s.dependency 'Kingfisher', '= 5.3.1'

  # required for all subspecs
  s.subspec 'base' do |base|

  end

  s.subspec 'LoadComponentsStyles' do |componentsStyles|
    componentsStyles.dependency 'ComponentsStyles'
  end
end
