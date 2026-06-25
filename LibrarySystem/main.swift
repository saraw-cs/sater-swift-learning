//
//  main.swift
//  LibrarySystem
//
//

import Foundation

class Book {
    let id: Int
    let title: String
    let author: String
    var price: Double?
    var quantity: Int?
    
    init(id: Int, title: String, author: String, price: Double? = nil, quantity: Int? = nil ){
        self.id = id
        self.title = title
        self.author = author
        self.price = price
        self.quantity = quantity
    }
}

class Library {
    private var books: [Book] = []
    func addBook(_ book: Book){
        books.append(book)
        print("تم اضافة الكتاب :\(book.title)")
    }
    func removeBook(id: Int){
        books.removeAll{$0.id == id}
        print("تم حذف الكتاب رقم: \(id)")
    }
    func displayBooks(){
        print("\n----قائمة الكتب----")
        for book in books{
            print("ID:\(book.id) title:\(book.title) author:\(book.author) price:\(book.price ?? 0) quantity:\(book.quantity ?? 0 )")
        }
    }
    func sellBook(id: Int, requestedQuantity: Int) {
        guard let book = books.first(where: {$0.id == id}) else{
            print("الكتاب غير موجود")
            return
        }
        let currentQuantity = book.quantity ?? 0
        if currentQuantity >= requestedQuantity {
            book.quantity = currentQuantity - requestedQuantity
            print("تمت عملية البيع بنجاح")
        }
        else {
            print("تنبيه: الكمية غير كافيه ")
        }
    }
}

let myLibrary = Library()
myLibrary.addBook(Book(id: 7, title: "one day", author: "roby jen", price: 55.0, quantity: 13))
myLibrary.displayBooks()
myLibrary.sellBook(id: 1, requestedQuantity: 2)

