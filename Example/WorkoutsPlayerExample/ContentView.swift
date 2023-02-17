//
//
//  ContentView.swift
//
//  Created by Cristian Barril on 01/02/2023
//
//

import SwiftUI
import WorkoutsPlayerAnytimeFitnessInternal

struct ContentView: View {
    var body: some View {
        WorkoutsPlayerView()
            .padding(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
