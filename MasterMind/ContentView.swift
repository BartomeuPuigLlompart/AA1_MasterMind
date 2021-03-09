//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct row {
    let number: Int
    let content: String
}

func doNothing(){}

struct ContentView: View {
    var rowList: [row] = [
        row(number: 1, content: "1:"),
        row(number: 2, content: "2:"),
        row(number: 3, content: "3:"),
        row(number: 4, content: "4:"),
        row(number: 5, content: "5:"),
        row(number: 6, content: "6:"),
        row(number: 7, content: "7:"),
        row(number: 8, content: "8:"),
        row(number: 9, content: "9:"),
        row(number: 10, content: "10:"),
        row(number: 11, content: "11:"),
        row(number: 12, content: "12:")
    ]
    var body: some View {
        VStack{
            Text("MasterMind").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding().background(Color.orange)
            Spacer()
            
            List{
                ForEach(rowList, id: \.number) { row in
                    //Text(row.content).padding()
                        RowView()
                    }
            }
                
            Text("Tried 2 times").font(.title2).background(Color.orange).padding().foregroundColor(.white)
            Button("Start", action: doNothing)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
   
}
