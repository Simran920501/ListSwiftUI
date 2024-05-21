//
//  LandMarkRow.swift
//  ListUI
//
//  Created by satvinder on 21/05/24.
//

import SwiftUI

struct LandMarkRow: View {
    var landmarkRowData : Landmark
    var body: some View {
        HStack{
            landmarkRowData.image
                .resizable()
                .frame(width:50,height:50)
            Text(landmarkRowData.name)
            Spacer()
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landmarkRowData: landmarks[0])
    }
}
