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
                    .frame(width: 100)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("", text: $secondText)
                    .frame(width: 100)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("", text: $thirdText)
                    .frame(width: 100)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("", text: $fourthText)
                    .frame(width: 100)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("", text: $fifthText)
                    .frame(width: 100)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    let firstNumber = Int(firstText) ?? 0
                    let secondNumber = Int(secondText) ?? 0
                    let thirdNumber = Int(thirdText) ?? 0
                    let fourthNumber = Int(fourthText) ?? 0
                    let fifthNumber = Int(fifthText) ?? 0
                    let calculationResults = firstNumber + secondNumber + thirdNumber + fourthNumber + fifthNumber
                    print(firstNumber + secondNumber + thirdNumber + fourthNumber + fifthNumber)
                    sumOfAdditions = String(calculationResults)
                } label: {
                    Text("Button")
                }
                Text(sumOfAdditions)
                    .padding(EdgeInsets(
                        top: 3,
                        leading: 0,
                        bottom: 0,
                        trailing: 40
                    ))
                    .frame(width: 100.0)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
