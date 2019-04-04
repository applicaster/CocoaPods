Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "6.0.0"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_6.0.0_2e8dad203fed6b382c2250790f991c24c87d2d53.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.2',
								'OTHER_CFLAGS'  => '-fembed-bitcode',
								'ENABLE_BITCODE' => 'YES'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
	s.static_framework = true
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins', '~> 8.0.0'
end
