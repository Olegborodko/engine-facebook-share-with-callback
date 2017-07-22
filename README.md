# Facebook share with callback

## Instalation

### gemfile
```ruby
gem 'facebookshare', git: 'git@github.com:Olegborodko/engine-facebook-share-with-callback.git'
```

### application.js
```ruby
//= require facebookshare/facebook_share.js
```

### application.scss
```ruby
@import 'facebookshare/facebook_share';
```

### routes.rb
```ruby
post 'callback_facebook_ddddd', to: 'example_controller#example_callback_method', as: 'callback_facebook_ddddd'
```

### controller
```ruby
skip_before_action :verify_authenticity_token, only: :example_callback_method
```

### view
```ruby
<%= facebook_share(
'dom_element_id',
'2343425234324', # individual facebook api id
'callback_facebook_ddddd', # callback path
'http://year.week.date', # site for sharing
'title for sharing',
'description for sharing',
'http://year-week.date/images/noimage.png', # image path
'200', # image width
'200', # image height
'image/png' # image type
) 
%>
 ```
 
### Help and Docs
https://developers.facebook.com/docs/javascript/examples <br>
https://stackoverflow.com/questions/23514157/using-share-open-graph-facebook-ui-to-create-dynamic-share-dialog-for-quiz-res

#### This project rocks and uses MIT-LICENSE.
