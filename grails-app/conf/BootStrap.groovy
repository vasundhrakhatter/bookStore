import bookstore.BookAuthor
import bookstore.BookTitle
import bookstore.Person
import bookstore.PersonRole
import bookstore.Role

class BootStrap {

    def init = { servletContext ->

        Role roleadmin=Role.findByAuthority('ROLE_ADMIN')?:new Role(authority: 'ROLE_ADMIN').save(flush: true, failOnError: true)
        Role roleuser= Role.findByAuthority('ROLE_USER')?:new Role(authority: 'ROLE_USER').save(flush: true,failOnError: true)

        Person admin=Person.findByUsername('admin')?:new Person(username: 'admin',password: 'admin',enabled: true).save(flush: true,failOnError: true)
        Person user=Person.findByUsername('vasundhra')?: new Person(username: 'vasundhra', password: 'vasundhra', enabled: true).save(flush: true, failOnError: true)

        PersonRole.create(admin,roleadmin)
        PersonRole.create(admin,roleuser)
        PersonRole.create(user,roleuser)


        BookTitle book1=BookTitle.findByTitle('notebook')?:new BookTitle(title: 'notebook',price: 500)
        BookTitle book2=BookTitle.findByTitle('dearjohn')?:new BookTitle(title: 'dearjohn',price: 400)
        BookAuthor bookAuthor=BookAuthor.findByFirstName('dan')?:new BookAuthor(lastName: 'brown', firstName: 'dan')
        bookAuthor.addToBookTitles(book1).addToBookTitles(book2).save(flush: true, failOnError: true)
        BookAuthor bookAuthor1=BookAuthor.findByFirstName('nicholas')?:new BookAuthor(lastName: 'spark',firstName: 'nicholas')
        bookAuthor1.addToBookTitles(book1).save(flush: true,failOnError: true)
    }
    def destroy = {
    }
}
