import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = TestPartners()

        do {
			try await site.publish(buildDirectoryPath: "docs")
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct TestPartners: Site {
    var name = "Test Partners"
    var titleSuffix = ""
	var domain: String = "testpartners.com"
	var url = URL(static: "https://www.testpartners.com")
    var builtInIconsEnabled = true
	var robotsConfiguration = Robots()
		
	var author = "Test Partners"
	var language: Language = .english
	var locale: Locale = .autoupdatingCurrent
	var sd: Locale.LanguageCode? = "en-US"
	var timeZone: TimeZone = .autoupdatingCurrent
	var copyright: String? = "© \(Calendar.current.component(.year, from: Date())) Ledge Partners"

	var description: String = "Discover strategic opportunities with Test Partners! We focus on working with promising enterprises that demonstrate strong growth potential. Partner with us to elevate your business to new heights—let’s create lasting value together!"

    var homePage = Home()
	var staticPages: [any StaticPage] {
		AboutUs()
	}
    var layout = MainLayout()
}

public enum SubDomain: String {
	case production = "www"
	case preprod = "preprod"
	case staging = "staging"
}

func siteLocation(_ scheme: String = "https:", _ site: SubDomain = .production, _ domain: String = "") -> URL {
	return URL(string: "\(scheme)//\(site.rawValue).\(domain)")!
}
