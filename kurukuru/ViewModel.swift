//
//  ViewModel.swift
//  kurukuru
//
//  Created by nekuro on 2021/09/19.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var kurukuruFrg = false
    
    func changeKurukuruViewState(){
        self.kurukuruFrg.toggle()
    }
}
