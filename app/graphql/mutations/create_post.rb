module Mutations
  class CreatePost < BaseMutation
    field :post, Types::PostType, null: true

    argument :user_id, Int, required: true
    argument :title, String, required: false

    def resolve(**args)
      user = User.find(args[:user_id])
      post = user.posts.build(title: args[:title])
      post.save
      {
        post: post
      }
    end
  end
end
