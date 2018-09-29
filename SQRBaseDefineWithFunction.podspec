Pod::Spec.new do |s|

  s.name         = "SQRBaseDefineWithFunction"
  s.version      = "0.2.3"
  s.summary  	 = '通用组件'
  s.homepage     = "https://github.com/pengruiCode/SQRBaseDefineWithFunction.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = {'pengrui' => 'pengruiCode@163.com'}
  s.source       = { :git => 'https://github.com/pengruiCode/SQRBaseDefineWithFunction.git', :tag => s.version}
  s.platform 	 = :ios, "8.0"
  s.source_files  = "SQRBaseDefineWithFunction/**/*.{h,m}"
  s.requires_arc = true
  s.description  = <<-DESC
			基础，通用组件，类扩展以及快捷方法
                   DESC

  s.subspec "Toast" do |ss|
     ss.dependency "Toast"
  end

  s.subspec "MBProgressHUD" do |ss|
     ss.dependency "MBProgressHUD"
  end

 end