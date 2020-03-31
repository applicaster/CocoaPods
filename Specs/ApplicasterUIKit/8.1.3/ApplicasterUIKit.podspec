Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "8.1.3"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_8.1.3_4c500d078c523ba2b4ebaaec2be97ef667e0fbc9.zip"
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
	s.dependency 'ZappPlugins'
end
