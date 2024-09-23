class Book{
  //use Encaptulation method

  //Book class Property
  String _title;
  String _author;
  int _publicationYear;
  int _pagesRead=0;



  static int _totalBooks = 0;

  //constructor
  Book(this._title, this._author, this._publicationYear){

  //add Book to totalBook Variable
    _totalBooks++;
  }

  void read(int pages) {
    _pagesRead += pages;
  }

  int getPagesRead() {
    return _pagesRead;
  }

  String getTitle() {
    return _title;
  }

  String getAuthor() {
    return _author;
  }

  int getPublicationYear() {
    return _publicationYear;
  }

//Search on google find calculation
  int getBookAge() {
    return DateTime.now().year - _publicationYear;
  }

  static int getTotalBooks() {
    return _totalBooks;
  }
}

void main() {
  Book book1 = Book("To Kill a Mockingbird", "Harper Lee", 1960);
  book1.read(100);

  Book book2 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);
  book2.read(50);

  Book book3 = Book("The Great History", "George Orwell", 1949);
  book3.read(200);


  //print all books
  print("Book 1:");
  print("Title: ${book1.getTitle()}");
  print("Author: ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages Read: ${book1.getPagesRead()}");
  print("Book Age: ${book1.getBookAge()}");


  print("Book 2:");
  print("Title: ${book2.getTitle()}");
  print("Author: ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages Read: ${book2.getPagesRead()}");
  print("Book Age: ${book2.getBookAge()}");


  print("Book 3:");
  print("Title: ${book3.getTitle()}");
  print("Author: ${book3.getAuthor()}");
  print("Publication Year: ${book3.getPublicationYear()}");
  print("Pages Read: ${book3.getPagesRead()}");
  print("Book Age: ${book3.getBookAge()}");


  print("Total Books: ${Book.getTotalBooks()}");
}
