//
//  APIHandler.swift
//  Assignment13
//
//  Created by DCS on 23/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
class APIHandler {
    static let shared = APIHandler()
    func search_weather(with name:String) -> [WeatherDetails] { //Surat
        if let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=68c784ab12c3488db7491704212312&q=\(name)&aqi=no"){
            do { let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do{ let jsonWeather = try decoder.decode(WeatherDetails.self, from: data)
                    print(jsonWeather.current.condition.icon)
                    return  [jsonWeather]
                }catch {
                    print(error)
                }
                
            } catch {
                print(error)
            }
        }
        
        return [WeatherDetails]()
    }
}
