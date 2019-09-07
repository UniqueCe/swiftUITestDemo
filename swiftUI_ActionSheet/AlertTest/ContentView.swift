//
//  ContentView.swift
//  AlertTest
//
//  Created by LPC_MBP on 2019/9/7.
//  Copyright © 2019 Mac_LPC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert: Bool = false
    
    @State var name: String = ""
    
    var alert : Alert {
        Alert(title: Text("aler-title"), message: Text("aler-message"), dismissButton: .default(Text("alert-dismiss")))
    }
    
    var body: some View {
       /*
        Button(action: {
            self.showAlert.toggle()
        }) {
            Text("This is Btn alert")
                .font(.system(size: 20))
                .foregroundColor(.green)
                .multilineTextAlignment(.trailing)
        }.alert(isPresented: $showAlert) { () -> Alert in
            self.alert
        }
        .frame(width: 160, height: 50, alignment: .leading)
        .background(Color.red)
         */
        
        /*
        HStack(spacing: 20) {
            Text("Mac").background(Color.red)
            Text("iPad").font(.system(size: 15))
            Text("iPhone").background(Color.yellow)
            Text("Watch").font(.system(size: 30))
        }
        .font(.largeTitle)
         */
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Mac").background(Color.red)
            Text("iPad").font(.system(size: 15))
            Text("iPhone").background(Color.yellow)
            Text("Watch").font(.system(size: 30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
