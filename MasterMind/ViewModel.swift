//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var activeRow: Int
    
    //private var timer: Timer
    
    init() {
        self.activeRow = 1
        
        /*self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
        }*/
    }
    
    public func sumOne() {
        activeRow += 1
    }
}
