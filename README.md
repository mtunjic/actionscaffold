# Scaffolder


## Usage
Controller generator (respond_with by default):
```bash
$ rails g controller:install
```
Result:
```ruby
class UsersController < ApplicationController
  respond_to :html, :json
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def new
    @user = User.new
    respond_with(@user)
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with(@user)
  end

  def update
    @user.update(user_params)
    respond_with(@user)
  end

  def destroy
    @user.destroy
    respond_with(@user)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
```

View generator (Bootstrap by default):
```bash
$ rails g view:install
```
Or with custom theme:
```bash
$ rails g view User name password --ui=bootstrap
```

Result:
```erb
<div class="form-group">
  <%= f.label :email %>
  <%= f.email_field :email, autofocus: true, class: "form-control" %>
</div>
```


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'scaffolder'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install scaffolder
```

# To do
- [X] [bootstrap 4](http://getbootstrap.com)
- [ ] [uikit](http://getuikit.com)
- [ ] [skeleton](http://getskeleton.com)
- [ ] [html5boilerplate](https://html5boilerplate.com)

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/mtunjic/scaffolder.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
