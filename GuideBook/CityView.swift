//
//  CityView.swift
//  GuideBook
//
//  Created by Kelvin on 6/3/24.
//

import SwiftUI

struct CityView: View {
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .ignoresSafeArea()
            .onAppear {
                cities = dataService.getData()
            }
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
