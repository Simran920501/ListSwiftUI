//
//  ContentView.swift
//  ListUI
//
//  Created by satvinder on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandMarkRow(landmarkRowData: landmark)
                }
                .navigationTitle(landmark.name)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
