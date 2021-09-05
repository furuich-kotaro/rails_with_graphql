module Mutations
  class DeleteUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :id, Int, required: true

    def resolve(**args)
      user = User.find(args[:id])
      user.destroy
      {
        user: user
      }
    end
  end
end
