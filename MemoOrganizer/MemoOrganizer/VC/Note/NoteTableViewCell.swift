//
//  NoteTableViewCell.swift
//  MemoOrganizer
//
//  Created by Marat on 02.12.2018.
//  Copyright © 2018 Marat. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    var id = 0
    
    func setData (data: Note) {
        self.dateLabel.text = data.note.text
        self.noteLabel.text = data.note.date
    }
}
