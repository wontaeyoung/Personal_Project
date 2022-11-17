//
//  Weather.swift
//  study_swiftui_WeatherView
//
//  Created by 원태영 on 2022/11/17.
//

import Foundation

struct Weather : Codable, Identifiable {
    var id : Int
    var image : String
    var time : Int
    var temperature : Int
}
