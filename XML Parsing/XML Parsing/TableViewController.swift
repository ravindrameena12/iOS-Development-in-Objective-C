//
//  TableViewController.swift
//  XML Parsing
//
//  Created by Vidyashri on 28/09/1941 Saka.
//  Copyright © 1941 CG. All rights reserved.
//

import UIKit

struct Book {
    var bookTitle: String
    var bookAuthor: String
}

class TableViewController: UITableViewController, XMLParserDelegate {
    
    var books: [Book] = []
    var elementName = String()
    var bookTitle = String()
    var bookAuthor = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.url(forResource: "Books", withExtension: "xml") {
            if let parser = XMLParser(contentsOf: path) {
                parser.delegate = self
                parser.parse()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let book = books[indexPath.row]
        
        cell.textLabel?.text = book.bookTitle
        cell.detailTextLabel?.text = book.bookAuthor
        
        return cell
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "book" {
            bookTitle = String()
            bookAuthor = String()
        }
        
        self.elementName = elementName
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "book" {
            let book = Book(bookTitle: bookTitle, bookAuthor: bookAuthor)
            books.append(book)
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let data = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if (!data.isEmpty) {
            if self.elementName == "title" {
                bookTitle += data
            } else if self.elementName == "author" {
                bookAuthor += data
            }
        }
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
