require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    @user = User.create(id: 1, name: 'john doe', email: 'johndoe@yahoo.com', password: 'johndoe')
    @post = Post.create(user_id: @user.id, content: 'Hello world, it\'s johnny')
  end

  context 'Comment Validations' do
    it 'accepts valid attributes' do
      expect(@post).to be_valid
    end

    it 'accepts a text' do
      expect(@post.content).to be_present
    end
  end

  context 'ActiveRecord Like Associations' do
    it { should belong_to(:post) }
    it { should belong_to(:user) }
  end
end
