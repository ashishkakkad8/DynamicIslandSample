//
//  ContentView.swift
//  DynamicIslandSample
//
//  Created by Ashish Kakkad on 20/09/22.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "capsule")
                .imageScale(.large)
                .foregroundColor(.black)
            Text("Hello, Dynamic Island!")
        }.onAppear(perform: {
            startActivity()
        })
        .padding()
    }
    
    func startActivity() {
        let attributes = ActivityAttributesSample()
        let contentState = ActivityAttributesSample.Status(value: "This is dynamic island!")
        do {
            let _ = try Activity<ActivityAttributesSample>.request(attributes: attributes, contentState: contentState)
        }
        catch (let error) {
            print(error.localizedDescription)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
