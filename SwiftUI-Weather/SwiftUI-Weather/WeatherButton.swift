//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Акмарал Тажиева on 10.01.2023.
//

import SwiftUI

struct ButtonWeather: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 25, weight: .medium))
            .cornerRadius(10)
    }
    
}
