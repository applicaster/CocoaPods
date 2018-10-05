Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "4.0.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_4.0.0_0f1d58357c1639e23464525c43cc87a5719f20f5.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.1',
								'OTHER_CFLAGS'  => '-fembed-bitcode',
								'ENABLE_BITCODE' => 'YES'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.static_framework = true
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins', '~> 6.1.0'
end
