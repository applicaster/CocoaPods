Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "3.1.2"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_3.1.2_ea974aeccab3a254ac9c47f9c2e361d611f00bb3.zip"
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
