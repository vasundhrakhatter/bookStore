package bookstore

class BookTitle {

    String title
    Integer price
    static belongsTo = BookAuthor
    static hasMany = [bookauthors: BookAuthor]
    static constraints = {
        title nullable: false, blank: false
        price blank: false
    }
}
