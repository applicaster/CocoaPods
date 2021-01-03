Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "8.2.0"
	s.ios.deployment_target = "10.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://assets-production.applicaster.com/zapp/helpers/sdks/ApplicasterUIKit/ApplicasterUIKit_Framework_8.2.0_c7fe589c1e731a84fe7a0a9afac785b0a6bdfe14.zip"
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
