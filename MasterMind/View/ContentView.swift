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
    var colorCheck: [Color] = [Color.white, Color.white, Color.white, Color.white]
}

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel

    
    var body: some View {
        VStack{
            Text("MasterMind").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding().background(Color.orange)
            
            switch(viewModel.gameState)
            {
            case .PLAY:
                Spacer()
            List{
                ForEach(self.viewModel.rowList, id: \.number) { row in
                    if self.viewModel.activeRow >= row.number
                    {
                        RowView(firstColor: row.firstColor, secondColor: row.secondColor,thirdColor: row.thirdColor,fourthColor: row.fourthColor, puntuation: row.colorCheck)
                    }
                    }
            }
            InputsRowView(firstColor: viewModel.rowList[viewModel.activeRow].firstColor, secondColor: viewModel.rowList[viewModel.activeRow].secondColor, thirdColor: viewModel.rowList[viewModel.activeRow].thirdColor, fourthColor: viewModel.rowList[viewModel.activeRow].fourthColor, viewModel: viewModel)
                Text(String(format: "Tempt: %d", self.viewModel.activeRow+1)).font(.title2).background(Color.orange).padding().foregroundColor(.white)
            case .WIN:
                var emoji: [String] = ["\u{1F389}", "\u{1F38A}"]
                Text("CONGRATULATIONS, \n YOU WIN! " + emoji[0] + emoji[1]).font(.title2).multilineTextAlignment(.center).background(Color.green).padding().foregroundColor(.white)
                Text(String(format: "Number of tempts: %d", self.viewModel.activeRow)).font(.title2).background(Color.orange).padding().foregroundColor(.white)
                Button("PLAY AGAIN!", action: { viewModel.restartGame() })
                    .frame(width: 150, height: 20, alignment: .center)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .font(.title2)
                    .cornerRadius(30)
            case .LOSE:
                var emoji: [String] = ["\u{2620}", "\u{1F645}"]
                Text("OH NOO, \n YOU LOSE! " + emoji[0] + emoji[1]).font(.title2).multilineTextAlignment(.center).background(Color.red).padding().foregroundColor(.white)
                
                Button("PLAY AGAIN!", action: { viewModel.restartGame() })
                    .frame(width: 150, height: 20, alignment: .center)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .font(.title2)
                    .cornerRadius(30)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(viewModel: ViewModel())
        
    }
   
}
