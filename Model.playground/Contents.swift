import UIKit
import AlgoModel
import Algorithms

func partition() {
    var tickets = Ticket.orderedTickets(count: 4) + Ticket.userGeneratedTickets(count: 4)
    tickets.shuffle()
        
    print(tickets.map { $0.title })
    
    let pIndex = tickets.partition(by: { $0.createdAt == nil })
    
    print(tickets.map { $0.title })
    print(pIndex)
}

