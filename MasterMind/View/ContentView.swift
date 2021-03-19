//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct row {
    let number: Int
    var firstColor: Color
    var secondColor: Color
    var thirdColor: Color
    var fourthColor: Color
}

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel

    
    var body: some View {
        VStack{
            Text("MasterMind").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding().background(Color.orange)
            Spacer()
            
            List{
                ForEach(self.viewModel.rowList, id: \.number) { row in
                    if self.viewModel.activeRow >= row.number
                    {
                        RowView(firstColor: row.firstColor, secondColor: row.secondColor,thirdColor: row.thirdColor,fourthColor: row.fourthColor)
                    }
                    }
            }
            InputsRowView(firstColor: viewModel.colorList[0], secondColor: viewModel.colorList[1], thirdColor: viewModel.colorList[2], fourthColor: viewModel.colorList[3], viewModel: viewModel)
            Text(String(format: "Tempt: %d", self.viewModel.activeRow+1)).font(.title2).background(Color.orange).padding().foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(viewModel: ViewModel())
        
    }
   
}
