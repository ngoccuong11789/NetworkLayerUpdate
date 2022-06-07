//
//  SupportModel.swift
//  NetworkLayer
//
//  Created by Nguyen Ngoc Cuong on 06/06/2022.
//  Copyright © 2022 Ahmed Masoud. All rights reserved.
//

import Foundation
struct Support : Codable {
    let url : String?
    let text : String?

    enum CodingKeys: String, CodingKey {

        case url = "url"
        case text = "text"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        text = try values.decodeIfPresent(String.self, forKey: .text)
    }

}
