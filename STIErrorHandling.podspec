Pod::Spec.new do |s|
  s.name             = "STIErrorHandling"
  s.version          = "0.5.0"
  s.summary          = "STIErrorHandling provides an easy way to handle error presentation and creation on iOS."
  s.description      = <<-DESC
                       STIErrorHandling is a small Framework that provides a base implementation for error handling in iOS applications. It deals with the problem to streamline the presentation of errors in various parts of an application as well as provide APIs to implement error specific recovery options the user of the application can choose from.

						The presentation of an error is reduced to a single line of code that can be called from any view, view controller or any other class that inherits from `UIResponder`:

						    [self presentError:error completionHandler:^(BOOL didRecover) {
						        if (didRecover) {
						             [self tryAgain];
						        }
						    }];

						This is all the code you need to implement in your view controllers if an operation that returns an `NSError` fails.
                       DESC
  s.homepage         = "https://github.com/iCarambaa/STIErrorHandling"
  s.license          = 'Apache License, Version 2.0'
  s.author           = { "Sven Titgemeyer" => "s.titgemeyer@titgemeyer-it.de" }
  s.source           = { :git => "https://github.com/iCarambaa/STIErrorHandling.git", :tag => s.version.to_s }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  
  s.frameworks = 'UIKit'
end
