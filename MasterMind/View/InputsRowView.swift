//
//  InputsRowView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct InputsRowView: View {
    let firstColor: Color
    let secondColor: Color
    let thirdColor: Color
    let fourthColor: Color
    
    let viewModel: ViewModel
    
    var body: some View {
        HStack{
            Spacer()
            Button("OK", action: { viewModel.checkRow() })
                .frame(width: 30, height: 30, alignment: .center)
                .padding()
                .background(Color.gray)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button("SWAP", action: { viewModel.swapColor(_color: 1) })
                .frame(width: 20, height: 20, alignment: .center)
                .padding()
                .background(firstColor)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button("SWAP", action: { viewModel.swapColor(_color: 2) })
                .frame(width: 20, height: 20, alignment: .center)
                .padding()
                .background(secondColor)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button("OK", action: { viewModel.swapColor(_color: 3) })
                .frame(width: 20, height: 20, alignment: .center)
                .padding()
                .background(thirdColor)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button("OK", action: { viewModel.swapColor(_color: 4) })
                .frame(width: 20, height: 20, alignment: .center)
                .padding()
                .background(fourthColor)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Spacer()
        }
            
    }
}


struct InputsRowView_Previews: PreviewProvider {
    static var previews: some View {
        InputsRowView(firstColor: Color.red, secondColor: Color.red, thirdColor: Color.red, fourthColor: Color.red, viewModel: ViewModel())
    }
}
