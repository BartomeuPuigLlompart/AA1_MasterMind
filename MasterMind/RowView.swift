//
//  SwiftUIView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

//var firstColor: Color

struct RowView: View {
    var body: some View {
        HStack{
            VStack{
                Text("X").fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                Text("X").fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
            VStack{
                Text("X").fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                Text("X").fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
            Circle()
                .fill(Color.red)
            Circle()
                .fill(Color.red)
            Circle()
                .fill(Color.red)
            Circle()
                .fill(Color.red)
        }
            
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
