Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "2.2.0"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_2.2.0_7a3e70339859c3b712e0b65688dc65cc71a46993.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '4.1'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'

	s.frameworks = 'AVFoundation', 'AVKit'
	s.dependency 'ZappPlugins', '~> 4.2.0'
end
