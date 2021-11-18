# frozen_string_literal: true

collection @posts
attributes :id, :name
node :image do |u|
  url_for(u.image)
end
