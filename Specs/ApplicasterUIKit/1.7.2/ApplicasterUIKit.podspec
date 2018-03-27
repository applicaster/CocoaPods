Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.7.2"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.7.2_b611d14035d58f5370b32a210d19bfe2ba35145c.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.0'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'

	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappHelpers', '~> 1.5.0'
	s.swift_version = '4.0'
end
