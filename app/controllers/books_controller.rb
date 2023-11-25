class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def get
        
    end

    def new
        @books = Book.new
    end
    # params.require(:books).permit(:booktitle, :bookimg)
end
