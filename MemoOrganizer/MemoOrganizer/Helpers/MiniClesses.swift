//
//  MiniClesses.swift
//  MemoOrganizer
//
//  Created by Marat on 05.12.2018.
//  Copyright © 2018 Marat. All rights reserved.
//

import Foundation

class Note {
    var note : (text : String, date : String) = (text: "", date: "")
    var unpacked = ""
    
    func unpack() {
        let symbolArray = Array(unpacked)
        var date = ""
        var text = ""
        date.append(contentsOf: symbolArray[(symbolArray.count - 10)...(symbolArray.count - 1)])
        text.append(contentsOf: symbolArray[0...(symbolArray.count - 10)])
    }
}
