//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack {
            Image("Islamic")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Rowview(MyCounter: $counter[0], title: "استغفر الله العظيم")
                Rowview(MyCounter: $counter[1], title: "الحمدالله")
                Rowview(MyCounter: $counter[2], title: "سبحان الله وبحمده")

     
            }
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}


struct Rowview: View {
    @Binding var MyCounter: Int
    @State var title: String
    var body: some View {
        HStack{
            Text(title).font(.title)
            Spacer()
            Text("\(MyCounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green .opacity(0.7))
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    MyCounter = MyCounter + 1
                }
        }.padding()
            .background(.white .opacity(0.5))
            
    }
}
