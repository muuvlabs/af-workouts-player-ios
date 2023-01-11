//
//
//  ContentView.swift
//
//  Created by Cristian Barril on 06/01/2023
//
//

import SwiftUI
//import WorkoutsPlayerCore // Core is hidden inside WorkoutsPlayerUI
import WorkoutsPlayerUI

struct ContentView: View {
    var body: some View {
        WorkoutsPlayerView()
            .onAppear() {
                testFacade()
            }
    }
    
    func testFacade() {
//        let facade = Facade()
//        
//        facade.publicFunction()
//        facade.publicFunctionUsingEndpoints()
//        facade.publicFunctionUsingUtilities()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
