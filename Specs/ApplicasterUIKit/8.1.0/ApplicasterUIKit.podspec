Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "8.1.0"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_8.1.0_deeec38d02637a86218ff8668a00dfa214cf5f32.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '5.1',
								'OTHER_CFLAGS'  => '-fembed-bitcode',
								'ENABLE_BITCODE' => 'YES'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.static_framework = true
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins', '~> 10.0.0'
end
