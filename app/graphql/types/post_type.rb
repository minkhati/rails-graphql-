# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false do
      description "This is post's id."
    end
    
    field :title, String do
      description "This is Post's title."
    end
    
    field :body, String do
      description "This is Post's body."
    end
    
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time that this post was created at"
    end
    
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time that this post was updated at"
    end
    
    field :author_id, Integer, null: false do
      description "The id of this post's author."
    end
    
    field :author, Types::AuthorType, null: true do
      description "This post's author in object form."
    end
  end
end
