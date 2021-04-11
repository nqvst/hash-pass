//
//  ContentView.swift
//  hash-pass
//
//  Created by Jack Enqvist on 2021-04-11.
//

import SwiftUI

struct ContentView: View {
    var dataEntries: [DataEntry] = [
       DataEntry(content: "First"),
       DataEntry(content: "couple"),
       DataEntry(content: "of"),
       DataEntry(content: "strings")
   ]
    
    @EnvironmentObject var exampleData: ObservableDataExample
    var body: some View {
        VStack {
            //Text(exampleData.globalMessage)
//.padding()
            List(dataEntries) { e in
                Text(e.content)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
