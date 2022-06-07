//
//  DataModel.swift
//  NetworkLayer
//
//  Created by Nguyen Ngoc Cuong on 06/06/2022.
//  Copyright © 2022 Ahmed Masoud. All rights reserved.
//

import Foundation
struct Data : Codable {
    let id : Int?
    let name : String?
    let year : Int?
    let color : String?
    let pantone_value : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case year = "year"
        case color = "color"
        case pantone_value = "pantone_value"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        year = try values.decodeIfPresent(Int.self, forKey: .year)
        color = try values.decodeIfPresent(String.self, forKey: .color)
        pantone_value = try values.decodeIfPresent(String.self, forKey: .pantone_value)
    }

}
