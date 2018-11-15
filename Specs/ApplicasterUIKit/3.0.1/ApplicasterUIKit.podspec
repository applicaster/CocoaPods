Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "3.0.1"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_3.0.1_3ef280112923c4b521c0cedbedaa62f566a3b089.zip"
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
	s.dependency 'ZappPlugins', '~> 6.0.0'
end
