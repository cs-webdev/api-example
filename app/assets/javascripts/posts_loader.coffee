$ ->
  $(document).on 'click', ->
    $.getJSON '/api/v1/posts.json', (posts) ->
      for post in posts
        $('ul').append("<li>#{post.title} from JSON</li>")
