//
//  ContentView.swift
//  ActionSheet
//
//  Created by 米国梁 on 2021/4/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var showActionSheet = false
    
    @State var favoritePlace = ""
    
    var body: some View {
        VStack {
            
            Button("Show Action Sheet") {
                showActionSheet.toggle()
            }
            
            Text("Your favorite place is: \(favoritePlace)")
        }
        // Only one actionSheet here, otherwise unexpected result will happen
        .actionSheet(isPresented: $showActionSheet, content: {
            ActionSheet(title: Text("Where are you going?"), message: Text("Tell me your favorite place"), buttons: [
                .default(Text("United State"), action: {
                    favoritePlace = "United State"
                }),
                .default(Text("China"), action: {
                    favoritePlace = "China"
                }),
                .default(Text("Korea"), action: {
                    favoritePlace = "Korea"
                }),
                .default(Text("United Kindom"), action: {
                    favoritePlace = "United Kindom"
                }),
                .cancel()
            ])
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
