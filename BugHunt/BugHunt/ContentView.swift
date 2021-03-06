//
//  ContentView.swift
//  BugHunt
//
//  Created by Pete Smith on 08/06/2021.
//

import SwiftUI

struct ContentView: View {

    @State var isPresented = false

    var body: some View {
        VStack {
            Text("Welcome to Bug Hunt!")
                .padding()
                .font(.title)
                .foregroundColor(.white)

            Button(action: {
                isPresented = true
            }, label: {
                Text("Show me a bug").foregroundColor(.white)
            })
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .alert(isPresented: $isPresented, content: {
                    Alert(title: Text("Show Bug!"),
                          message: Text("This is a bug 🐛"),
                          dismissButton: .default(Text("Ok").foregroundColor(.red))
                    )
                })
        }
        .edgesIgnoringSafeArea(.all)
        .frame(minWidth: 0, idealWidth: .greatestFiniteMagnitude, maxWidth: .greatestFiniteMagnitude, minHeight: 0, idealHeight: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude, alignment: .center)
        .background(Color.cyan)
    }
}

enum Test {

    static let testOne = 1
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
