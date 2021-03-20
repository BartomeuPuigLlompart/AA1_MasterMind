//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var activeRow: Int
    
    @Published var rowList: [row] = [
        row(number: 1, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 2, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 3, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 4, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 5, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 6, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 7, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 8, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 9, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 10, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 11, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue),
        row(number: 12, firstColor: Color.blue, secondColor: Color.blue, thirdColor: Color.blue, fourthColor: Color.blue)
    ]
    
    @Published var colorList: [Color] = [ Color.blue, Color.red, Color.green, Color.yellow, Color.blue ]
    
    //private var timer: Timer
    
    init() {
        self.activeRow = 0
        
        /*self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
        }*/
    }
    
    public func checkRow() {
        activeRow += 1
        
    }
    
    public func swapColor(_color: Int)
    {
        switch(_color)
        {
        case 1:
            rowList[activeRow].firstColor = colorList[colorList.firstIndex(of: rowList[activeRow].firstColor)! + 1]
        case 2:
            rowList[activeRow].secondColor = colorList[colorList.firstIndex(of: rowList[activeRow].secondColor)! + 1]
        case 3:
            rowList[activeRow].thirdColor = colorList[colorList.firstIndex(of: rowList[activeRow].thirdColor)! + 1]
        case 4:
            rowList[activeRow].fourthColor = colorList[colorList.firstIndex(of: rowList[activeRow].fourthColor)! + 1]
            
        default:
            return
        }
        
    }
}


