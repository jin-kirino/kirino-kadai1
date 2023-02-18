//
//  ContentView.swift
//  kirino-kadai1
//
//  Created by 神　樹里乃 on 2023/02/08.
//

import SwiftUI

struct ContentView: View {
    @State private var firstText: String = ""
    @State private var secondText: String = ""
    @State private var thirdText: String = ""
    @State private var fourthText: String = ""
    @State private var fifthText: String = ""
    @State private var sumOfAdditions: String = "Label"

    var body: some View {
        HStack {
            VStack {
                TextField("", text: $firstText)
                TextField("", text: $secondText)
                TextField("", text: $thirdText)
                TextField("", text: $fourthText)
                TextField("", text: $fifthText)

                Button(action: didTapButton) {
                    Text("Button")
                }
                Text(sumOfAdditions)
                    .padding(EdgeInsets(
                        top: 3,
                        leading: 0,
                        bottom: 0,
                        trailing: 40
                    ))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame(width: 100)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
        }
        .padding()
    }

    private func didTapButton() {
        let firstNumber = Int(firstText) ?? 0
        let secondNumber = Int(secondText) ?? 0
        let thirdNumber = Int(thirdText) ?? 0
        let fourthNumber = Int(fourthText) ?? 0
        let fifthNumber = Int(fifthText) ?? 0
        sumOfAdditions = String(firstNumber + secondNumber + thirdNumber + fourthNumber + fifthNumber)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
