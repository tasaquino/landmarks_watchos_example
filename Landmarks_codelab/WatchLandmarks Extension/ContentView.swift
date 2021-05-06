//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Thais Aquino on 3/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
