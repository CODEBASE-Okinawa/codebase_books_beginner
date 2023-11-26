class BooksController < ApplicationController
    def index
        @book = Book.all
    end

    def get

    end

    def new
    @book = Book.new
    end

    def create
    @book = Book.new(books_params)
        if @book.save
            redirect_to "/books"
        else
            # render "new", status: :unprocessable_entity
        end
    end

    # private行こうに書かれているものはクラスの中でしか呼び出せない
    private

    def books_params
        params.require(:book).permit(:booktitle, :bookimg)
    end
    
end
