//
//  ContentView.swift
//  hw1
//
//  Created by User03 on 2021/3/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Text("猜猜看").offset(x: 0, y: -200).font(.system(size: 80))
                NavigationLink(destination: game()) {
                    Text("開始")
                        .foregroundColor(Color.black).padding().background(Color.blue).cornerRadius(100)
                }
            }
            .background(Image("back").resizable()
            .frame(width: 450, height: 800, alignment: .center))
        }.onAppear{
            Qbank.shuffle()}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
