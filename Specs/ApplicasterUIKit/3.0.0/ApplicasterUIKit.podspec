Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "3.0.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_3.0.0_2767034c27f31a4976838921d7c5272109f165ff.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.1',
								'ENABLE_BITCODE' => 'YES',
								'OTHER_CFLAGS'  => '-fembed-bitcode'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.static_framework = true
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins'
end
