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
    let active: Bool
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                
                Rectangle().fixedSize()
                Rectangle().fixedSize()
            }
            VStack{
                Rectangle().fixedSize()
                Rectangle().fixedSize()
            }
            Circle()
                .fill(firstColor).background(Color.orange)
            Circle()
                .fill(secondColor).background(Color.orange)
            Circle()
                .fill(thirdColor).background(Color.orange)
            Circle()
                .fill(fourthColor).background(Color.orange)
            Spacer()
        }
            
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(firstColor: Color.red, secondColor: Color.red, thirdColor: Color.red, fourthColor: Color.red, active: false)
    }
}
