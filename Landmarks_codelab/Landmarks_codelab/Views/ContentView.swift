//
//  ContentView.swift
//  Landmarks_codelab
//
//  Created by Thais Aquino on 30/4/21.
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
