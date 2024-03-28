require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'should not have a blank or nil value for title' do
  no_title = Blog.create(content:"string")
  expect(no_title.errors[:title]).to_not be_empty
  end
  it 'should not have a blank or nil value for content' do
  no_content = Blog.create(title:"string")
  expect(no_content.errors[:content]).to_not be_empty
  end
  it 'should have a unique title' do
  not_unique1 = Blog.create(title:"string", content:"string idv hjgtdhvjh lj")
  not_unique2 = Blog.create(title:"string", content:"validates ubhbbikknljjhv")
  expect(not_unique2.errors[:title].first).to include("has already been taken")
  end
  it 'should have a title with at least 4 characters' do
    not4_char = Blog.create(title:"a", content:"stringbkjjn jkhnbolln")
    expect(not4_char.errors[:title].first).to include("is too short (minimum is 4 characters)")
    end

    it 'should have content with at least 10 characters' do
      not10_char = Blog.create(title:"string", content:"string")
      expect(not10_char.errors[:content].first).to include("is too short (minimum is 10 characters)")
      end
end
