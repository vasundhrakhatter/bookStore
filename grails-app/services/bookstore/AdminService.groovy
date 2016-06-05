package bookstore

import grails.transaction.Transactional
import org.grails.datastore.mapping.query.Query

import javax.security.sasl.AuthorizeCallback

@Transactional
class AdminService {

   def createEntry(Map params){
       String affordability
       Integer numberOfBooks=0
       Integer price= params.price as Integer
       if(price >=300){
           affordability='high'
       }
       else{
           affordability='low'
       }
//       BookAuthor auth=BookAuthor.findAllByName(params.author)
//       if(auth){
//           numberOfBooks=auth.numOfBooks+1
//       }
//       else{
//           numberOfBooks=0
//       }
       BookAuthor bookAuthor=BookAuthor.findByName(params.author)?:new BookAuthor(name: params.author,numOfBooks: numberOfBooks, popularity: 0,reasonability: affordability).save(flush: true,failOnError: true)
       BookTitle bookTitle=BookTitle.findByTitle(params.title)?:new BookTitle(title: params.title,numOfBuyers: 0,rating: 0,quantity: params.quantity as Integer,price: params.price as Integer, bookauthor: bookAuthor).save(flush: true,failOnError: true)

       if(bookAuthor&&bookTitle){
           return true
       }
       else {
           return false
       }
    }
}
