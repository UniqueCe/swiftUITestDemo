//
//  ContentView.swift
//  swiftUI_ActionSheet
//
//  Created by LPC_MBP on 2019/9/7.
//  Copyright © 2019 Mac_LPC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showActionSheet: Bool = false
    
    @State var showAlert: Bool = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("title"), message: Text("message"), buttons: [
            .default(Text("default")),
            .destructive(Text("destructive")),
            .default(Text("default-action"), action: {
                print("default-action")
                }),
            .destructive(Text("destructive-action"), action: {
                print("destructive-action")
            })
        ])
    }
    
    var alert : Alert {
        Alert(title: Text("aler-title"), message: Text("aler-message"), dismissButton: .default(Text("alert-dismiss")))
    }
    
    
    var body: some View {
    
        Button(action: {
//            self.showActionSheet.toggle()
            self.showAlert.toggle()
        }) {
            Text("This is Btn ")
        }
//        .actionSheet(isPresented: $showActionSheet) { () -> ActionSheet in
//            self.actionSheet
//        }
            .alert(isPresented: $showAlert) { () -> Alert in
                self.alert
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
