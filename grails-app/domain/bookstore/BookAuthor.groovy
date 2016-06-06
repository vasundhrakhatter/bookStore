package bookstore

class BookAuthor {

    String firstName
    String lastName
    static hasMany = [bookTitles:BookTitle]
    static constraints = {
        firstName nullable: false, blank: false
        lastName  nullable: false, blank: false
    }
}
