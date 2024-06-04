//
//  DataService.swift
//  GuideBook
//
//  Created by Kelvin on 6/3/24.
//

import Foundation

struct DataService {
    func getFileData() -> [City] {
        if let url = Bundle.main.url(forResource: "DemoData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do {
                    let cities = try decoder.decode([City].self, from: data)
                    return cities
                } catch {
                    print("Couldn't parse the JSON: \(error.localizedDescription)")
                }
            } catch {
                print("Couldn't read the file: \(error.localizedDescription)")
            }
        }
        return [City]()
    }
}
