package bookstore

class BookAuthor {

    String name
    Integer numOfBooks
    Float popularity
    String reasonability
    static hasMany = [bookTitles:BookTitle]
    static constraints = {
        name nullable: false, blank: false
        numOfBooks blank: false
        popularity blank: false
        reasonability blank: false ,nullable: false
    }
}
