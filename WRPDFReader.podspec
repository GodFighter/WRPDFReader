#
# Be sure to run `pod lib lint WRPDFReader.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WRPDFReader'
  s.version          = '0.0.1'
  s.summary          = 'PDF阅读器'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'PDF阅读器，包括展示目录列表，搜索页面等功能.'

  s.homepage         = 'https://github.com/GodFighter/WRPDFReader'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GodFighter' => '{xianghui_ios@163.com}' }
  s.source           = { :git => 'https://github.com/GodFighter/WRPDFReader.git', :tag => s.version.to_s }
  # s.social_media_url = 'http://weibo.com/huigedang/home?wvr=5&lf=reg'

  s.ios.deployment_target = '9.0'

  s.subspec 'Config' do |ss|
      ss.source_files = 'WRPDFReader/Classes/Model/Config/*.swift'
  end

    s.subspec 'Outlines' do |ss|
        ss.source_files = 'WRPDFReader/Classes/Model/Outlines/*.swift'
    end

    s.subspec 'Search' do |ss|
        ss.source_files = 'WRPDFReader/Classes/Model/Search/*.swift'
    end

    s.subspec 'ViewControllers' do |ss|
        ss.source_files = 'WRPDFReader/Classes/Model/ViewControllers/*.swift'
    end

    s.subspec 'Views' do |ss|
        ss.source_files = 'WRPDFReader/Classes/Model/Views/*.swift'
    end

  # s.resource_bundles = {
  #   'WRPDFReader' => ['WRPDFReader/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'WRPDFModel', '~> 0.0.2'
end
