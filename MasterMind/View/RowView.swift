//
//  SwiftUIView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI



struct RowView: View {
    let firstColor: Color
    let secondColor: Color
    let thirdColor: Color
    let fourthColor: Color
    let puntuation: [Color]
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                
                Rectangle().fill(puntuation[0]).fixedSize()
                Rectangle().fill(puntuation[1]).fixedSize()
            }
            VStack{
                Rectangle().fill(puntuation[2]).fixedSize()
                Rectangle().fill(puntuation[3]).fixedSize()
            }
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

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(firstColor: Color.red, secondColor: Color.red, thirdColor: Color.red, fourthColor: Color.red, puntuation: [Color.white, Color.white, Color.white, Color.white])
    }
}
