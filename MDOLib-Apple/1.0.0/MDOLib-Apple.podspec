Pod::Spec.new do |s|
    s.name         = "MDOLib-Apple"
    s.version      = "1.0.0"
    s.summary      = "Mumineen.org libraries."
    s.description  = "COntains salaat and date algorithms"
    s.homepage     = "http://mumineen.org"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2020
                   Permission is granted to use...
                  LICENSE
                }
    s.author             = { "Mumineen.org" => "help@mumineen.org" }
    s.source       = { :git => "https://github.com/tfa2773/MDOLib-Apple.git", :tag => "#{s.version}" }
    s.vendored_frameworks = "MDOLib.xcframework"
    s.platform = :ios
    s.ios.deployment_target  = '12.0'   
end
