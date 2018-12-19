//   ||////////////////////////////////////////////////////////||
//   ||                                                        ||
//   ||  DataManager.swift                                     ||
//   ||  MemoOrganizer                                         ||
//   ||                                                        ||
//   ||  Created by Marat on 02.12.2018.                       ||
//   ||  Copyright © 2018 Marat. All rights reserved.          ||
//   ||                                                        ||
//   ||\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\||


import UIKit

class NotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var notesTableView: UITableView!
    
    var notesArray : Note? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.stringArray(forKey: "notes_memoorganizer") != nil {
            DataManager.datamanager.unpacked_notes = UserDefaults.standard.stringArray(forKey: "notes_memoorganizer")!
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        notesTableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150.0)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let emptyCell = UITableViewCell()
        
        if indexPath.section == 0{
            let cell = notesTableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as! NoteTableViewCell
            let prepareCell = Note()
            prepareCell.unpacked = DataManager.datamanager.unpacked_notes[indexPath.row]
            prepareCell.unpack()
            cell.setData(data: prepareCell)
            return cell
        }
        
        return emptyCell
    }
    
}
