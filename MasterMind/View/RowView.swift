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
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                
                Rectangle().fill(Color.gray).fixedSize()
                Rectangle().fill(Color.gray).fixedSize()
            }
            VStack{
                Rectangle().fill(Color.gray).fixedSize()
                Rectangle().fill(Color.gray).fixedSize()
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
        RowView(firstColor: Color.red, secondColor: Color.red, thirdColor: Color.red, fourthColor: Color.red)
    }
}
