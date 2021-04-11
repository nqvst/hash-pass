//
//  ObservableDataExample.swift
//  hash-pass
//
//  Created by Jack Enqvist on 2021-04-11.
//

import SwiftUI
import EventKit

class ObservableDataExample: ObservableObject {
    @Published var globalMessage: String = "shared String from data"
}
