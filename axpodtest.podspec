Pod::Spec.new do |spec|
  spec.name         = "axpodtest"
  spec.version      = "0.0.1"
  spec.summary      = "arkui-x frameworks."
  spec.description  = <<-DESC
    arkui-x platform frameworks.
                   DESC
  spec.homepage     = "https://www.openharmony.cn/"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "xinkk" => "xinkk@neusoft.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/ClockworkXin/AXCocoapodsTestProject", :tag => "#{spec.version}" }

  # 使用 vendored_frameworks 指定预编译框架
  spec.vendored_frameworks = "libarkui_dragcontroller.xcframework"

  # 排除 Info.plist 文件
  spec.exclude_files = "libarkui_dragcontroller.xcframework/**/*.plist"

  spec.frameworks = "UIKit", "Foundation"
end