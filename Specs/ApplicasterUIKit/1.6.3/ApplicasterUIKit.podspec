Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.6.3"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.6.3_0386f59ef0a6a45c9490e1f7078cbca8924cabe3.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.0'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'

	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappHelpers', '~> 1.4.0'
end
