//
//
//  ContentView.swift
//
//  Created by Cristian Barril on 06/01/2023
//
//

import SwiftUI
import WorkoutPlayerCore

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        MySwiftUIView(text: "MySwiftUIView")
            .onAppear() {
                testFacade()
            }
        
        Image("Workouts screenshot", bundle: .init(for: Facade.self))
            .resizable()
            .frame(width: 150, height: 350)
    }
    
    func testFacade() {
        let facade = Facade()
        
        facade.publicFunction()
        facade.publicFunctionUsingEndpoints()
        facade.publicFunctionUsingUtilities()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
