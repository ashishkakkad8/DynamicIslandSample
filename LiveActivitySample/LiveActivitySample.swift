//
//  LiveActivitySample.swift
//  LiveActivitySample
//
//  Created by Ashish Kakkad on 20/09/22.
//

import WidgetKit
import SwiftUI

struct LiveActivityExpandedViewSample: View {
    var state: ActivityAttributesSample.ContentState
    var body: some View {
        VStack {
            Text ("Hello, CENTER")
            Text(state.value)
                .foregroundColor(.secondary)
        }
        .activityBackgroundTint(.gray)
    }
}

@main
struct LiveActivitySample: Widget {
    let kind: String = "LiveActivitySample"

    var body: some WidgetConfiguration {
        ActivityConfiguration(for: ActivityAttributesSample.self) { context in
            LiveActivityExpandedViewSample(state: context.state)
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.center) {
                    LiveActivityExpandedViewSample(state: context.state)
                }
                DynamicIslandExpandedRegion(.leading) {
                    Text("LEFT")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("RIGHT")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("BOTTOM")
                }
            } compactLeading: {
                Image(systemName: "capsule")
            } compactTrailing: {
                EmptyView()
            } minimal: {
                EmptyView()
            }

        }

    }
}
