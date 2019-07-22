//
//  ContentView.swift
//  SwiftUI_composition
//
//  Created by Maxime Britto on 22/07/2019.
//  Copyright © 2019 Maxime Britto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image("logo_burger_quiz")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:100)
            
            HostRow()
            Spacer()
        }
        
    }
    
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


