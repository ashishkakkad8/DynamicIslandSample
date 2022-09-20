//
//  ActivityAttributesSample.swift
//  DynamicIslandSample
//
//  Created by Ashish Kakkad on 20/09/22.
//

import ActivityKit

struct ActivityAttributesSample: ActivityAttributes {
    public typealias Status = ContentState
    public struct ContentState: Codable, Hashable {
        var value: String
    }
}
