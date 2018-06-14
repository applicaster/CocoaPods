Pod::Spec.new do |s|
  s.name         = "NavigationBarPlugins"
  s.version      = "1.3.9"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.summary      = "NavigationBarPlugins"
  s.description  = "Navigation Bar Plugins stores all navigation bar plugins"
  s.homepage     = "https://applicaster.com"
	s.license      = ''
	s.author       = "Applicaster LTD."
	s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/NavigationBarPlugins_Framework_1.3.9_33749789c4bcdd638b739cfc6970fd5305d19a64.zip"
  }
  s.static_framework = true
  s.default_subspec = 'Basic'
  s.requires_arc    = true
  s.xcconfig = { 'ENABLE_BITCODE' => 'YES',
                 'SWIFT_VERSION' => '4.1',
                 'OTHER_LDFLAGS' => '$(inherited)',
                 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                 'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                 'OTHER_SWIFT_FLAGS[config=Debug]' => '$(inherited) -D DEBUG',
                 'OTHER_CFLAGS'  => '-fembed-bitcode'}

  s.subspec 'Basic' do |basic|
    basic.vendored_frameworks = 'NavigationBarPluginBase.framework'
    basic.dependency 'CocoaLumberjack/Swift', '~> 3.4.2'
  	basic.dependency 'ZappPlugins'
  	basic.dependency 'ApplicasterSDK'
    basic.dependency 'ComponentsSDK'
    basic.resources = ['NavigationBarPluginBase.framework/DefaultNavigationBar*.nib']
  end
end
