//
//  ContentView.swift
//  BMI
//
//  Created by Noura. on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .cyan], startPoint: .topLeading, endPoint: .bottomLeading) .opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                Image("Weight")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                
                TextField("wight", text: $weight)
                    .frame(width: 400, height: 20)
                    .padding()
                    .background(.white .opacity(0.4))
                
            TextField("height", text: $height)
                    .frame(width: 400, height: 20)
                    .padding()
                    .background(.white .opacity(0.4))
                
                Button {
                    result = BMICalc(w: Double(weight) ?? 0.0, h: Double (height) ?? 0.0)
                    if result <= 20  {
                        health = "ضعيف"
                    } else if result <= 25 {
                        health = "جيد"
                    } else {
                        health = "سمين"
                    }
                        }label: {
                        Text("احسب")
                }
                .font(.title2)
                .frame(width: 100, height: 50)
                .background(.teal .opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(15)
                
                
                Text("BMI = \(result)")
                Text("الحالة = \(health)")
            } .padding()
        }
    }
    func BMICalc(w: Double, h: Double) -> Double{
        return w / (h * h)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}




