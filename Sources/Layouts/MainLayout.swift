import Foundation
import Ignite

struct MainLayout: Layout {
	var color: Color = .darkGray
	var logo: String = navBarString(logoLocation: "/images/logos/bonsai.svg", "Test", "Partners")
    var body: some HTML {
		Head {
			MetaTag(name: "description", content: TestPartners().description)
			Script(file: "https://www.googletagmanager.com/gtag/js?id=G-KX3Q54VR")
			Script(code: gtmCode())
			MetaLink(href: "/css/main.css", rel: "stylesheet")
		}
        Body {
			NavigationBar(logo: "LOGO") {
				Link("Home", target: "")
				Link(Text("foo"), target: AboutUs())
				Link(Button("Contact Us")
						.buttonSize(.small)
						.role(.primary),
					 target: "#contactUs")
			}
			.navigationItemAlignment(.trailing)
			.navigationBarStyle(.light)
			.background(.lightGray)
			.position(.default)
			.padding(.bottom, 16)
			.id("navigationBar")
			content
            IgniteFooter()
        }
    }
}
