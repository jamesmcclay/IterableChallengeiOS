//
//  ContentView.swift
//  IterableChallenge
//
//  Created by James McClay on 4/28/21.
//

import SwiftUI
import IterableSDK

struct ContentView: View {
    
    //Pull in model functions
    let m = M()
    
    var body: some View {
        
        //Updates user profile with data from challenge
        Button(K.profileUpdateLabel) {
            m.updateUserProfile()
        }
        
        Spacer().frame(height: 30)
        
        //Send custom event
        Button (K.sendEventLabel) {
            m.sendEvent()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
