import UIKit
import AlgoModel
import Algorithms

func partition() {
    print(#function)
    var tickets = Ticket.shuffledTickets
        
    print(tickets.map { $0.title })
    
    let pIndex = tickets.partition(by: { $0.createdAt == nil })
    
    print(tickets.map { $0.title })
    print(pIndex)
}

func stablePartion() {
    print(#function)
    var tickets = Ticket.shuffledTickets
        
    print(tickets.map { $0.title })
    
    let pIndex = tickets.stablePartition(by: { $0.createdAt == nil })
    
    print(tickets.map { $0.title })
    print(pIndex)
}

func sortWithStablePartition() {
    print(#function)
    
    var tickets = Ticket.shuffledTickets
    tickets.sort(by: { $0.order < $1.order })
    
    print(tickets.map { $0.title })
    tickets.stablePartition(by: { $0.isUserGenerated })
    print(tickets.map { $0.title })
}

sortWithStablePartition()
