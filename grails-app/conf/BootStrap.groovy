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

        BookAuthor auth1=BookAuthor.findByName('spark')?: new BookAuthor(name: 'spark',numOfBooks: 10, popularity: 8, reasonability: 'high')
        BookAuthor auth2=BookAuthor.findByName('brown')?: new BookAuthor(name: 'brown',numOfBooks: 5,popularity: 4, reasonability: 'low')

        BookTitle book1=BookTitle.findByTitle('notebook')?: new BookTitle(title: 'notebook', numOfBuyers: 100, rating: 4.5, quantity: 2, price: 500, bookauthor:auth1)
        BookTitle book2=BookTitle.findByTitle('digital fortress')?: new BookTitle(title: 'digital fortress', numOfBuyers: 40, rating: 3, quantity: 1, price: 100,bookauthor:auth2)
        
        auth1.save(flush: true,failOnError: true)
        auth2.save(flush: true,failOnError: true)
        book1.save(flush: true,failOnError: true)
        book2.save(flush: true,failOnError: true)

    }
    def destroy = {
    }
}
