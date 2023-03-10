//
//
//  ContentView.swift
//
//  Created by Cristian Barril on 01/02/2023
//
//

import SwiftUI
import WorkoutsPlayerAnytimeFitnessInternal
import WorkoutsPlayerCoreInternal

struct ContentView: View {
    @State var engineController: EngineController?
    
    var body: some View {
        Group {
            if let engineController = engineController {
                WorkoutsPlayerSDK.shared.workoutsPlayerListModePlayerView(engineController: engineController)
                    .padding(.top)
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .font(.system(size: 100))
            }
        }
        .onAppear(perform: {
            createEngineController()
        })
    }
    
    private func createEngineController() {
        Task {
            let username = "juan.seillant@celerative.com"
            let pass = "qqqqqqqq"
            
            let smartWorkoutInfo = BuildSmartWorkoutInfo(
                streamId: 3_400,
                durationSeconds: 60 * 30,
                equipment: "0", // "101|12"
                intensityMod: "same",
                coachId: 3,
                isAudioMotivation: true,
                isAudioForm: true,
                isAudioDirection: true,
                isAudioPacing: true
            )
            
            self.engineController = await WorkoutsPlayerSDK.shared.createEngineController(user: .init(login: username, password: pass), workoutInfo: smartWorkoutInfo)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
