require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
    s.name = "react-native-keyboard-tracking-view"
    s.version = package["version"]
    s.summary = package['description']
    s.author = package['author']
    s.homepage = package['homepage']
    s.license = package['license']

    s.platform = :ios, "8.0"
    s.framework    = 'UIKit'
    s.requires_arc = true

    s.source = { :git => "https://github.com/wix/react-native-keyboard-tracking-view.git" }
    s.source_files = "lib/*.{h,m}"

    s.dependency 'React'
end
