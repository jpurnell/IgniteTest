//
//  NavBarHeader.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 3/10/25.
//

	/// Generates the HTML for the logo in the navigation bar.
	/// - Parameters:
	///   - image: The URL of the logo image (default is "/images/logos/bonsai.svg").
	///   - altText: The alternative text for the image (default is "").
	///   - width: The width of the image in pixels (default is 60).
	///   - height: The height of the image in pixels (default is 60).
	///   - destination: The URL to navigate to when the logo is clicked (default is "/").
	/// - Returns: A string containing the HTML for the logo.
	func logo(_ image: String = "/images/logos/bonsai.svg", altText: String = "", _ width: Int = 60, _ height: Int = 60, destination: String = "/") -> String  {
		return "<a href=\"/\" class=\"navbar-brand\" aria-label=\"home\"><img src=\"\(image)\" aria-label=\"\(altText)\" class=\"img-fluid mx-auto\" style=\"width: \(width)px; height: \(height)px\"></a>"
	}
	
	/// Generates the HTML for the header in the navigation bar.
	/// - Parameters:
	///   - message: The message to display in the header (default is "Test").
	///   - fontFamily: The font family to use for the header text (default is .princetonMonticello).
	/// - Returns: A string containing the HTML for the header.
	func header(_ message: String = "Test", _ fontFamily: FontFamily = .princetonMonticello) -> String {
		return "<a href=\"/\" class=\"navbar-brand\"><h3 style=\"font-family: \(fontFamily.rawValue); font-size: calc(1.2rem + .5vw); color: #EE7F2D; line-height: 2rem; margin-bottom: 0rem; text-align: center; class=\"text-center mx-auto\">\(message)</h2>"
	}
	/// Generates the HTML for the kicker text in the navigation bar.
	/// - Parameters:
	///   - message: The message to display as the kicker (default is "Partners").
	///   - fontFamily: The font family to use for the kicker text (default is .princetonMonticello).
	/// - Returns: A string containing the HTML for the kicker.
	func kicker(_ message: String = "Partners", _ fontFamily: FontFamily = .princetonMonticello) -> String {
		"<h4 style=\"font-family: \(fontFamily.rawValue); font-size: calc(0.55rem + 0.5vw); color: var(--bs-dark); line-height: 1rem; padding: 0em; margin-bottom: 0rem; letter-spacing: .10rem; class=\"text-center mx-auto\">\(message)</h4></a>"
	}
	
	/// Combines the logo, header, and kicker into a single string for the navigation bar.
	/// - Parameters:
	///   - logo: The HTML string for the logo.
	///   - header: The HTML string for the header.
	///   - kicker: The HTML string for the kicker.
	/// - Returns: A string containing the combined HTML for the navigation bar.
	func navBarString(logoLocation: String, _ headerString: String, _ kickerString: String) -> String {
		return """
   \(logo(logoLocation))
   \(header(headerString))
   \(kicker(kickerString))
"""
	}
