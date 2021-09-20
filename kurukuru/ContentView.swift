//
//  ContentView.swift
//  kurukuru
//
//  Created by nekuro on 2021/09/19.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    var body: some View {
        GeometryReader{ geometry in
            Button(action: {
                viewModel.changeKurukuruViewState()
            }) {
                Text("くるくる")
            }
            .frame(width: geometry.size.width, height: geometry.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            if viewModel.kurukuruFrg {
                ProgressView("Now Loading")
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
