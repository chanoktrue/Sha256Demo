//
//  ContentView.swift
//  Sha256Demo
//
//  Created by Thongchai Subsaidee on 18/3/22.
//

import SwiftUI
import CryptoKit

struct ContentView: View {
    
    let str = "abc"
    
    var body: some View {
        
        let data = Data(str.utf8)
        let digest = SHA256.hash(data: data)
        let hash = digest.compactMap{String(format: "%02x", $0)}.joined().uppercased()
        
        Text(hash)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




