//
//  ContentView.swift
//  Calculator
//
//  Created by 원태영 on 2022/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputLabel : String = ""
    
    var body: some View {
        VStack {
            
            Text(inputLabel)
                .font(.largeTitle)
            
            Divider()
            Spacer()
            NumberPadView()
        }
        
    }
}


struct NumberPadView : View {
    let range = 1..<4
    @Binding var inputLabel : String
    
    var body : some View {
        // 계산기 행 - 열 구조
        HStack(spacing : 20) {
            
            VStack(spacing : 20) {
                Button("7")
                
            }
            
            
            
            
        }
    }
    
}

struct ButtonStyle : ViewModifier {
    func body
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
