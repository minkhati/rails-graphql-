module Types
  class MutationType < Types::BaseObject
    field :create_post_mutation, mutation: Mutations::CreatePostMutation
    field :create_author_mutation, mutation: Mutations::CreateAuthorMutation
    
  end
end
