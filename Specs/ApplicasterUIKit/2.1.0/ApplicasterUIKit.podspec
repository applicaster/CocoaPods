Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "2.1.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_2.1.0_832accada78e31c7e84a21354f50b2f450e388af.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.1'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'

	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins', '~> 4.1.0'
end
