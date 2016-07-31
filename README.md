# Action Scaffold

* Clean & DRY Rails controllers.
* View support for bootstrap 4, uikit, skeleton and html5boilerplate.
* Select box for a belongs_to relationship.
* Nested resources


## Usage
Controller generator (respond_with by default):
```bash
$ rails g responders:install
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
$ rails g scaffold_view:install
```
Or with custom theme:
```bash
$ rails g scaffold_view:install --ui=bootstrap
```

Import Bootstrap styles in app/assets/stylesheets/application.scss:
```scss
// app/assets/stylesheets/application.scss
@import "bootstrap";
@import "bootstrap-theme"
```



Result:
```erb
<div class="form-group">
  <%= f.label :email %>
  <%= f.email_field :email, autofocus: true, class: "form-control" %>
</div>
```
![Errors](http://i63.tinypic.com/302b22f.png =600x "Errors")
![Forms](http://i66.tinypic.com/349b0og.png =600x "Forms")


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'responders'
gem 'actionscaffold'
gem 'bootstrap', '~> 4.0.0.alpha3'
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
