//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Austin Burke on 4/26/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
