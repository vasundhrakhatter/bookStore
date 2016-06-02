package bookstore

class BookTitle {

    String title
    Integer numOfBuyers
    Float rating
    Integer quantity
    Integer price
    static belongsTo = [bookauthor: BookAuthor]
    static constraints = {
        title nullable: false, blank: false
        numOfBuyers blank: false
        rating blank: false
        quantity blank: false
        price blank: false
    }
}
