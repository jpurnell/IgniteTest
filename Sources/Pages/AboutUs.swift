import Foundation
import Ignite

struct AboutUs: StaticPage {
    var title = "About Us"

    var body: some HTML {
		Text("\(Date().formatted())")

	}
}
