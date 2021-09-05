module Types
  class MutationType < Types::BaseObject
    field :deleteUser, mutation: Mutations::DeleteUser
    field :updateUser, mutation: Mutations::UpdateUser
    field :createUser, mutation: Mutations::CreateUser
  end
end
