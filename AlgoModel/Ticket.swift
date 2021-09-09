//
//  Ticket.swift
//  SwiftAlgoPlayground
//
//  Created by Dzmitry Arlou on 9/8/21.
//

import Foundation

public struct Ticket {
    
    public var id: UUID = .init()
    public var title: String
    public var order: Int
    public var createdAt: Date?

}

extension Date {
    
    func date(byAddingHours hours: Int) -> Date {
        Calendar.current.date(byAdding: .hour, value: hours, to: self) ?? Date()
    }
    
}


