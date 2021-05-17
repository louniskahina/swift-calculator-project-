//
//  Treatments.swift
//  test
//
//  Created by Kahina Lounis on 10/05/2021.
//

import Foundation

class Treatments{
   // var notes = [Note]()
    @Published var notes: [Note] = [] {
        didSet {
            savedNotes()
        }
    }
    
    let key = "notes"
    init() {
        getNotes()
    }
 
    /// add new note
    func add(_ note: Note){
        notes.append(note)
    }
    
    /// clear note list
    func remove() {
        notes.removeAll()
    }
    
    func savedNotes() {
        if let encodedData = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encodedData, forKey: key)
        }
    }
    
    ///retrieve data
    func getNotes() {
        guard
            let data = UserDefaults.standard.data(forKey: key),
            let savedNotes = try? JSONDecoder().decode([Note].self, from: data)
        else { return }

        self.notes = savedNotes
    }
    
  
}

