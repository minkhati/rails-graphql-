module Mutations
  class CreateAuthorMutation < BaseMutation
    field :author, Types::AuthorType, null: false
    
    argument :name, String, required: true do
      description "The name field is a string type and is required for a new author to be created."
    end
    
    def resolve(name:)
      @author = Author.new(name: name)
      
      if (@author.save)
        {
          author: @author,
          errors: [],
        } else {
          author: nil,
          errors: @author.errors.full_messages,
        }  
      end
    end
  end
end
