module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :posts, [Types::PostType], null: false do
      description "Query that selects all posts."
    end
    
    field :postsCount, Integer, null: false do
      description "Query that returns the total number of posts."      
    end

    field :authors, [Types::AuthorType], null: false do 
      description "Query that selects all the authors."  
    end
    
    field :author, Types::AuthorType, null: false do
      description "Query that select author with given id."
    end
    
    def posts
      return Post.all
    end
    
    def postsCount
      return Post.count
    end
    
    def authors
      return Author.all
    end
    
    def author(author)
      return Author.find_by_id(Author)
    end
  end
end
