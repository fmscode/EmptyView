Pod::Spec.new do |s|
  s.name             = "EmptyView"
  s.version          = "0.1.0"
  s.summary          = "EmptyView is a placeholder view for UIViewControllers."
  s.description      = <<-DESC
                        EmptyView is a placeholder view for UIViewControllers. More to come...
                       DESC
  s.homepage         = "http://github.com/fmscode"
  s.license          = 'MIT'
  s.author           = { "Frank Michael Sanchez" => "orion1701@me.com" }
  s.source           = { :git => "https://github.com/fmscode/EmptyView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Assets/*.png'
  s.ios.dependency 'BorderButton', '~> 0.1.0'
end
