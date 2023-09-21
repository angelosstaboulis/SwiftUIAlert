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
            Color.blue.overlay {
                Button {
                    present.toggle()
                } label: {
                    Text("Present Alert")
                }.background {
                    RoundedRectangle(cornerRadius: 60)
                       .frame(width:300,height:50)
                       .foregroundStyle(.red)
                }
            }
          
        }
        .padding()
        .alert(isPresented: $present) {
            showAlert(text: "Information Message", primary: "OK", secondary: "Cancel")
        }
        
    }
    func showAlert(text:String,primary:String,secondary:String)->Alert{
        return Alert(title: Text(text), primaryButton: .default(Text(primary), action: {
            debugPrint(primary)
        }), secondaryButton: .default(Text(secondary), action: {
            debugPrint(secondary)
        }))
    }
}

#Preview {
    ContentView(present: false)
}
