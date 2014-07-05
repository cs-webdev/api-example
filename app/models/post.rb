class Post < ActiveRecord::Base
  def as_json(options = nil)
    {
      title: title,
      body: body
    }
  end
end
