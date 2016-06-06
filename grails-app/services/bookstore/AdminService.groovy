package bookstore

import grails.transaction.Transactional
import org.grails.datastore.mapping.query.Query

import javax.security.sasl.AuthorizeCallback

@Transactional
class AdminService {

//    def createEntry(Map params) {
//
//        Integer numberOfBooks = 0
//        Integer price = params.price as Integer
//        String affordability = price >= 300 ? 'high' : 'low'
//        BookAuthor bookAuthor = BookAuthor.findByName(params.author) ?: new BookAuthor(name: params.author, numOfBooks: numberOfBooks, popularity: 0, reasonability: affordability).save(flush: true, failOnError: true)
//        BookTitle bookTitle = BookTitle.findByTitle(params.title) ?: new BookTitle(title: params.title, numOfBuyers: 0, rating: 0, quantity: params.quantity as Integer, price: params.price as Integer, bookauthor: bookAuthor).save(flush: true, failOnError: true)
//
//        if (bookAuthor && bookTitle) {
//            return true
//        } else {
//            return false
//        }
//    }

    def listAuthors(){
        List<BookAuthor> authorList=BookAuthor.findAllByIdGreaterThanEquals(1)
        return authorList
    }

    def listTitles(){
        List<BookTitle> titleList=BookTitle.findAllByIdGreaterThanEquals(1)
        return titleList
    }

   def editAuthor(Map params){

       params.newAuthor.eachWithIndex{it,i->
           if(it) {
               BookAuthor bookAuthor = BookAuthor.findByName(params.authorName[i])
               if (bookAuthor){
                   bookAuthor.name=it
               }
           }
      }


   }

    def addBook(Map params){
      BookTitle bookTitle=BookTitle.findByTitle(params.newBook)?:new BookTitle(title: params.newBook, price: 2000)
      BookAuthor bookAuthor=BookAuthor.findByFirstName(params.authorName).addToBookTitles(bookTitle).save(flush: true,failOnError: true)
        if(bookAuthor){
            return true
        }
    }
}
