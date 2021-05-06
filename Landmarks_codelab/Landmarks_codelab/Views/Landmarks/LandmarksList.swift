//
//  LandmarksList.swift
//  LandmarksCodeLab
//
//  Created by Thais Aquino on 30/4/21.
//

import SwiftUI

struct LandmarksList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }.navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
            .environmentObject(ModelData())
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
        
//        ForEach(["iPhone SE (2nd generation", "iPhone XS Max"], id: \.self) { deviceName in
//            LandmarksList().previewDevice(PreviewDevice(rawValue: deviceName))
            
//        }
    }
}
