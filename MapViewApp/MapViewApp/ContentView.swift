//
//  ContentView.swift
//  MapViewApp
//
//  Created by Thomas Sivilay on 28/7/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MapView().edgesIgnoringSafeArea(.vertical)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
