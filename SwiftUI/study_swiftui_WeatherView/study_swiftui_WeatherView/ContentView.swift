//
//  ContentView.swift
//  study_swiftui_WeatherView
//
//  Created by 원태영 on 2022/11/04.
//

import SwiftUI



struct ContentView: View {
    
    let weathers : [Weather] = weatherData
    
    var body: some View {
        VStack { // 1
            
            // 타이틀 날씨
            HStack { // 1-1
                VStack {
                    Text("서울")
                    Text("63°")
                    
                }
                .font(.title)
                .foregroundColor(.white)
                Spacer()
                VStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                    Text("맑음")
                    HStack {
                        Text("H:68°")
                        Text("L:42°")
                    }
                    
                }
                .modifier(WhiteLargeText())
            }
            .padding(10)
            
            
            // 시간별 날씨
            HStack(alignment : .top) { // 1-2
                ForEach(weathers) { weather in
                    VStack() {
                        Text("\(weather.time)AM")
                        Spacer()
                        Image(systemName : weather.image)
                            .renderingMode(.original)
                        Spacer()
                        Text("\(weather.temperature)°")
                    }
                    .modifier(WhiteLargeText())
                }
                Spacer()
            }
            .frame(width: 340, height: 100)
            
            
            
        }
        .padding()
        .background(Color.gray)
        .border(.white,width: 10)
    }
}

struct WhiteLargeText : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
