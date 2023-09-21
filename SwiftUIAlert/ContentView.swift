//
//  ContentView.swift
//  SwiftUIAlert
//
//  Created by Angelos Staboulis on 21/9/23.
//

import SwiftUI

struct ContentView: View {
    @State var present:Bool = true
    var body: some View {
        VStack {
            Button {
                present.toggle()
            } label: {
                Text("Present Alert")
            }

        }
        .padding()
        .alert(isPresented: $present) {
            Alert(title: Text("Information Message"), primaryButton: .default(Text("OK"), action: {
                debugPrint("OK")
            }), secondaryButton: .default(Text("Cancel"), action: {
                debugPrint("Cancel")
            }))
        }
        
    }
}

#Preview {
    ContentView(present: false)
}
