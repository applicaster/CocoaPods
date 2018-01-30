Pod::Spec.new do |s|
  s.name         = "NavigationBarPlugins"
  s.version      = "0.1.3"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.summary      = "NavigationBarPlugins"
  s.description  = "Navigation Bar Plugins stores all navigation bar plugins"
  s.homepage     = "https://applicaster.com"
	s.license      = ''
	s.author       = "Applicaster LTD."
	s.source = {
    "http" => "https://dl.bintray.com/applicaster-ltd/pods/NavigationBarPlugins_Framework_0.1.3_15cad6fe209ea71e7f1ac22eb5cafc94dca1894c.zip"
  }
  s.default_subspec = 'Basic'
  s.requires_arc    = true
  s.xcconfig = { 'ENABLE_BITCODE' => 'NO',
                 'SWIFT_VERSION' => '4.0',
	  	 'OTHER_LDFLAGS' => '$(inherited) -objc -framework "TwitterKit" -framework "TwitterCore"'}

  s.subspec 'Basic' do |basic|
    basic.vendored_frameworks = 'NavigationBarPluginBase.framework'
    basic.dependency 'CocoaLumberjack/Swift', '~> 3.4.0'
  	basic.dependency 'ZappPlugins', '~> 2.0.0'
  	basic.dependency 'ApplicasterSDK', '~> 5.0.0'

  end
end
