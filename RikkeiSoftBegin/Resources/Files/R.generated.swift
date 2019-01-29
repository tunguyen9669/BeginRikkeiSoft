//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.image` struct is generated, and contains static references to 10 images.
  struct image {
    /// Image `a`.
    static let a = Rswift.ImageResource(bundle: R.hostingBundle, name: "a")
    /// Image `cars_selected`.
    static let cars_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "cars_selected")
    /// Image `cars`.
    static let cars = Rswift.ImageResource(bundle: R.hostingBundle, name: "cars")
    /// Image `home_selected`.
    static let home_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "home_selected")
    /// Image `home`.
    static let home = Rswift.ImageResource(bundle: R.hostingBundle, name: "home")
    /// Image `news_selected`.
    static let news_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "news_selected")
    /// Image `news`.
    static let news = Rswift.ImageResource(bundle: R.hostingBundle, name: "news")
    /// Image `services`.
    static let services = Rswift.ImageResource(bundle: R.hostingBundle, name: "services")
    /// Image `support_selected`.
    static let support_selected = Rswift.ImageResource(bundle: R.hostingBundle, name: "support_selected")
    /// Image `support`.
    static let support = Rswift.ImageResource(bundle: R.hostingBundle, name: "support")
    
    /// `UIImage(named: "a", bundle: ..., traitCollection: ...)`
    static func a(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.a, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "cars", bundle: ..., traitCollection: ...)`
    static func cars(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cars, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "cars_selected", bundle: ..., traitCollection: ...)`
    static func cars_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cars_selected, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "home", bundle: ..., traitCollection: ...)`
    static func home(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "home_selected", bundle: ..., traitCollection: ...)`
    static func home_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home_selected, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "news", bundle: ..., traitCollection: ...)`
    static func news(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.news, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "news_selected", bundle: ..., traitCollection: ...)`
    static func news_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.news_selected, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "services", bundle: ..., traitCollection: ...)`
    static func services(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.services, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "support", bundle: ..., traitCollection: ...)`
    static func support(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.support, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "support_selected", bundle: ..., traitCollection: ...)`
    static func support_selected(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.support_selected, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 7 storyboards.
  struct storyboard {
    /// Storyboard `Dev`.
    static let dev = _R.storyboard.dev()
    /// Storyboard `Home`.
    static let home = _R.storyboard.home()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `News`.
    static let news = _R.storyboard.news()
    /// Storyboard `Service`.
    static let service = _R.storyboard.service()
    /// Storyboard `Support`.
    static let support = _R.storyboard.support()
    
    /// `UIStoryboard(name: "Dev", bundle: ...)`
    static func dev(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.dev)
    }
    
    /// `UIStoryboard(name: "Home", bundle: ...)`
    static func home(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.home)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "News", bundle: ...)`
    static func news(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.news)
    }
    
    /// `UIStoryboard(name: "Service", bundle: ...)`
    static func service(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.service)
    }
    
    /// `UIStoryboard(name: "Support", bundle: ...)`
    static func support(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.support)
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try dev.validate()
      try home.validate()
      try launchScreen.validate()
      try main.validate()
      try news.validate()
      try service.validate()
      try support.validate()
    }
    
    struct dev: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let devViewController = StoryboardViewControllerResource<DevViewController>(identifier: "DevViewController")
      let name = "Dev"
      
      func devViewController(_: Void = ()) -> DevViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: devViewController)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.dev().devViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'devViewController' could not be loaded from storyboard 'Dev' as 'DevViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct home: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let homeViewController = StoryboardViewControllerResource<HomeViewController>(identifier: "HomeViewController")
      let name = "Home"
      
      func homeViewController(_: Void = ()) -> HomeViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: homeViewController)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.home().homeViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'homeViewController' could not be loaded from storyboard 'Home' as 'HomeViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = ViewController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct news: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "News"
      let newsViewController = StoryboardViewControllerResource<NewsViewController>(identifier: "NewsViewController")
      
      func newsViewController(_: Void = ()) -> NewsViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: newsViewController)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.news().newsViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'newsViewController' could not be loaded from storyboard 'News' as 'NewsViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct service: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "Service"
      let serviceViewController = StoryboardViewControllerResource<ServiceViewController>(identifier: "ServiceViewController")
      
      func serviceViewController(_: Void = ()) -> ServiceViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: serviceViewController)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.service().serviceViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'serviceViewController' could not be loaded from storyboard 'Service' as 'ServiceViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct support: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "Support"
      let supportViewController = StoryboardViewControllerResource<SupportViewController>(identifier: "SupportViewController")
      
      func supportViewController(_: Void = ()) -> SupportViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: supportViewController)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.support().supportViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'supportViewController' could not be loaded from storyboard 'Support' as 'SupportViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}