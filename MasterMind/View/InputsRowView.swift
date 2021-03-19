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
            Circle()
                .fill(firstColor)
            Circle()
                .fill(secondColor)
            Circle()
                .fill(thirdColor)
            Circle()
                .fill(fourthColor)
            Spacer()
        }
            
    }
}


struct InputsRowView_Previews: PreviewProvider {
    static var previews: some View {
        InputsRowView(firstColor: Color.red, secondColor: Color.red, thirdColor: Color.red, fourthColor: Color.red, viewModel: ViewModel())
    }
}
