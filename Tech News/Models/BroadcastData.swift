//
//  BroadcastData.swift
//  Tech News
//
//  Created by DIVYANI PRASAD THOTA on 06/02/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Broadcast]
}

struct Broadcast: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
