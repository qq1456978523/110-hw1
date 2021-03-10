//
//  game.swift
//  hw1
//
//  Created by User03 on 2021/3/10.
//

import SwiftUI

struct game: View {
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    @State var index: Int = 0
    @State private var showFinishView = false
    @State private var showAlert = false
    var body: some View {
        VStack {
            Text("第"+String(index + 1) + "題").offset(x: 0, y: -200).font(.system(size: 50))
            Text(Qbank[index].Quest).offset(x: 0, y: -170).font(.system(size: 50))
            Button(action:{showAlert = true
                index = index + 1
                if index > 9 {
                    index = 0
                    Qbank.shuffle()
                }
            }) {
                Text(Qbank[index].Choose[0]).font(.system(size: 30))
            }.alert(isPresented: $showAlert, content: {
                () -> Alert in
                let answer = Qbank[index].Answer
                return Alert(title: Text(answer))})
            Button(action:{showAlert = true
                index = index + 1
                if index > 10 {
                    index = 0
                    Qbank.shuffle()
                }
            }) {
                Text(Qbank[index].Choose[1]).font(.system(size: 30))
            }.alert(isPresented: $showAlert, content: {
                () -> Alert in
                let answer = Qbank[index].Answer
                return Alert(title: Text(answer))})
            Button(action:{showAlert = true
                index = index + 1
                if index > 10 {
                    index = 0
                    Qbank.shuffle()
                }
            }) {
                Text(Qbank[index].Choose[2]).font(.system(size: 30))
            }.alert(isPresented: $showAlert, content: {
                () -> Alert in
                let answer = Qbank[index].Answer
                return Alert(title: Text(answer))})
        }.background(Image("back").resizable()
                        .frame(width: 450, height: 800, alignment: .center))

    }
}

struct game_Previews: PreviewProvider {
    static var previews: some View {
        game()
    }
}
