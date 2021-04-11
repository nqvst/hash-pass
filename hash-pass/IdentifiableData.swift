//
//  IdentifiableData.swift
//  hash-pass
//
//  Created by Jack Enqvist on 2021-04-11.
//

import Foundation

struct DataEntry: Identifiable {
    var id = UUID()
    var content: String
}
