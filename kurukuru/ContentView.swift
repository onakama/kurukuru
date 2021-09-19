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
        VStack{
            Button(action: {
                viewModel.changeKurukuruViewState()
            }) {
                Text("くるくる")
            }
            .padding()
            if viewModel.kurukuruFrg {
                ProgressView("Now Loading")
                    .scaleEffect(x: 2, y: 2, anchor: .bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
