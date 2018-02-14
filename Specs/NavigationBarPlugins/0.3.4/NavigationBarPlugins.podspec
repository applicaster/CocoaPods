Pod::Spec.new do |s|
  s.name         = "NavigationBarPlugins"
  s.version      = "0.3.4"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.summary      = "NavigationBarPlugins"
  s.description  = "Navigation Bar Plugins stores all navigation bar plugins"
  s.homepage     = "https://applicaster.com"
	s.license      = ''
	s.author       = "Applicaster LTD."
	s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/NavigationBarPlugins_Framework_0.3.4_7e56d27d86e75e604cf0195413d7eb43bd584983.zip"
  }
  s.default_subspec = 'Basic'
  s.requires_arc    = true
  s.xcconfig = {
	'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
	'ENABLE_BITCODE' => 'NO',
	'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
	'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
	'SWIFT_VERSION' => '4.0'
  }

  s.subspec 'Basic' do |basic|
    basic.vendored_frameworks = 'NavigationBarPluginBase.framework'
    basic.dependency 'CocoaLumberjack/Swift', '~> 3.4.0'
  	basic.dependency 'ZappPlugins', '~> 2.0.2'
  	basic.dependency 'ApplicasterSDK', '~> 5.0.3'
  end
end
