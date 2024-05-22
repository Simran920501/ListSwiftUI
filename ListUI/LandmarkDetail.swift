//
//  LandmarkDetail.swift
//  ListUI
//
//  Created by satvinder on 21/05/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    //MARK: -
    var body: some View {
        ScrollView{
            VStack {
                MapView()
                    .frame(width: 400, height: 200)
                CircleImage(img: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title)
                    Text(landmark.description)
                }
                .padding()
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
