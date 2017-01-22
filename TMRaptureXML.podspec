
Pod::Spec.new do |s|

    s.name             = 'TMRaptureXML'
    s.version          = '1.0.0'
    s.summary          = 'Pod supported version of RaptureXML.'

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC

    s.homepage         = 'https://github.com/ThahirM/TMRaptureXML'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Thahir Maheen' => 'thahir@farabi.ae' }
    s.source           = { :git => 'https://github.com/ThahirM/TMRaptureXML.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'

    s.subspec 'RaptureXML' do |s1|
        s1.source_files = 'TMRaptureXML/RaptureXML/**/*'
        s1.requires_arc = true
    end

    s.libraries     = 'z', 'xml2'
    s.xcconfig      = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

    s.preserve_paths = 'TMRaptureXML/TMRaptureXML/Bridging-Header.h'
    s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => '${POD_ROOT}/TMRaptureXML/TMRaptureXML/Bridging-Header.h' }

end
