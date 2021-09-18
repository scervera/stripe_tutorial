class PostPolicy
    attr_reader :user, :post
  
    def initialize(user, post)
      @user = user
      @post = post
    end
  
    def update?
      user.role == "admin" || user.role == "editor" || user.id == post.user_id
    end

    def destroy?
      user.role == "admin" || user.id == post.user_id
    end
end
  