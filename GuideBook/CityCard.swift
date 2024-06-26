//
//  CityCard.swift
//  GuideBook
//
//  Created by Kelvin on 6/4/24.
//

import SwiftUI

struct CityCard: View {
    var city: City
    
    var body: some View {
        ZStack {
            Rectangle()
                .background(Image(city.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                )
                .foregroundColor(.clear)
                .cornerRadius(15)
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                
                Text(city.summary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
    }
}

struct CityCard_Previews: PreviewProvider {
    static var previews: some View {
        CityCard(city: City(name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "tokyo", attractions: [Attraction]()))
    }
}
