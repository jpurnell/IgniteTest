import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Welcome Test Partners"

    var body: some HTML {
		Text("\(Date().formatted())")
		Section {
			Image("/images/background/gile_panorama.jpeg", description: "A Panorama image from the Gile Mountain Fire Tower in Norwich, VT").resizable()
		}.id("hero").frame(maxWidth: .max)
		Section {
			Text("Philosophy")
		}
		.id("Philosophy")
		Section {
			Group {
				Text("Contact Us goes here.")
				Image("/images/background/gile_panorama.jpeg", description: "A Panorama image from the Gile Mountain Fire Tower in Norwich, VT").resizable()
			}
		}
		.id("contactUs")
    }
}
