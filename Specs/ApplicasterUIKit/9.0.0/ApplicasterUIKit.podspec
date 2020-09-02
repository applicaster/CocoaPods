Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "9.0.0"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_9.0.0_686ef0ace6707cb39b8af32e6643e2685a6bbbe0.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '5.1',
								'OTHER_CFLAGS'  => '-fembed-bitcode',
								'ENABLE_BITCODE' => 'YES'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.xcframework'
	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins'
end
