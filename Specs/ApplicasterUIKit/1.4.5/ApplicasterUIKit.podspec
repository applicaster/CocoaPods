Pod::Spec.new do |s|
	s.name = "ApplicasterUIKit"
	s.version = "1.4.5"
	s.ios.deployment_target = "9.0"
	s.summary = "ApplicasterUIKit"
	s.description = "ApplicasterUIKit"
	s.homepage = "https://applicaster.com"
	s.license = ''
	s.author = "Applicaster LTD"
	s.source = {
    	"http" => "https://dl.bintray.com/applicaster-ltd/pods/ApplicasterUIKit_Framework_1.4.5_ebb7ca39b24c4e5e8208baef9cd07d581651e589.zip"
	}
	s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
	s.requires_arc = true
	s.vendored_frameworks = 'ApplicasterUIKit.framework'
end
