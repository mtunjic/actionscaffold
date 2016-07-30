# Action Scaffold

* Clean & DRY Rails controllers.
* View support for bootstrap 4, uikit, skeleton and html5boilerplate.
* Select box for a belongs_to relationship.
* Nested resources


## Usage
Controller generator (respond_with by default):
```bash
$ rails g scaffold_controller:install
```
Result:
```ruby
class BooksController < ApplicationController
  before_action :set_book,
    only: [:show, :edit, :update, :destroy]

  # GET /books
  def index
    @books = Book.all
    respond_with(@books)
  end

  # GET /books/1
  def show
    respond_with(@book)
  end

  # GET /books/new
  def new
    @book = Book.new
    respond_with(@book)
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  def create
    @book = Book.new(book_params)
    @book.save
    respond_with(@book)
  end

  # PATCH/PUT /books/1
  def update
    @book.update(book_params)
    respond_with(@book)
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    respond_with(@book)
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).
      permit(:title, :author)
  end
end
```

View generator (Bootstrap by default):
```bash
$ rails g scaffold_view:install --ui=bootstrap
```
Or with custom theme:
```bash
$ rails g scaffold_view:install --ui=bootstrap
```

Result:
```erb
<div class="form-group">
  <%= f.label :email %>
  <%= f.email_field :email, autofocus: true, class: "form-control" %>
</div>
```
![alt text](http://i63.tinypic.com/302b22f.png "Errors")
![alt text](http://i66.tinypic.com/349b0og.png "Forms")


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'actionscaffold'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install actionscaffold
```

# To do
- [X] [bootstrap 4](http://getbootstrap.com)
- [ ] [uikit](http://getuikit.com)
- [ ] [skeleton](http://getskeleton.com)
- [ ] [html5boilerplate](https://html5boilerplate.com)

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/mtunjic/actionscaffold.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
