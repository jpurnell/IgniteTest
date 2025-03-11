//
//  Robots.swift
//  IgniteStarter
//
//  Created by Justin Purnell on 3/10/25.
//

import Foundation
import Ignite

struct Robots: RobotsConfiguration {
    var disallowRules: [DisallowRule]

    init() {
        let paths = [
            "/images"
        ]

        disallowRules = [
            DisallowRule(robot: .google, paths: paths),
            DisallowRule(robot: .bing, paths: paths),
//            DisallowRule(robot: .chatGPT)
        ]
    }
}
