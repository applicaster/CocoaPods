Pod::Spec.new do |s|
  s.name         = "NavigationBarPlugins"
  s.version      = "0.6.0"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.summary      = "NavigationBarPlugins"
  s.description  = "Navigation Bar Plugins stores all navigation bar plugins"
  s.homepage     = "https://applicaster.com"
	s.license      = ''
	s.author       = "Applicaster LTD."
	s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/NavigationBarPlugins_Framework_0.6.0_5d6c9e9866c542d1820df12100fc7bc7352667a8.zip"
  }
  s.default_subspec = 'Basic'
  s.requires_arc    = true
  s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
                 'SWIFT_VERSION' => '4.0',
                 'OTHER_LDFLAGS' => '$(inherited)',
                 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                 'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                 'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG'}

  s.subspec 'Basic' do |basic|
    basic.vendored_frameworks = 'NavigationBarPluginBase.framework'
    basic.dependency 'CocoaLumberjack/Swift', '~> 3.4.0'
  	basic.dependency 'ZappPlugins'
  	basic.dependency 'ApplicasterSDK'
    basic.dependency 'ZappLayoutsComponentsSDK'
  end
end
