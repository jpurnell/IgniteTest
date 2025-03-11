//
//  File.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 3/10/25.
//

import Foundation
import Ignite

// This is not currently in use, wanted to build a Navigation Bar Builder
@MainActor
func navBar(_ logo: String? = nil, color: Color = .black) -> NavigationBar {
	NavigationBar(logo: logo) {
		Link("Home", target: "")
		Link(target: AboutUs()) { Text("About Us")}
		Link(Button("Contact Us")
				.buttonSize(.small)
				.role(.primary),
			 target: "#contactUs")
	}
	.navigationItemAlignment(.trailing)
	.navigationBarStyle(.light)
}
