Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.7.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.7.0_e5b60fb4e6802398d241b3104c5c8e609dfa4c71.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.0'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'

	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappHelpers', '~> 1.4.0'
	s.swift_version = '4.0'
end
