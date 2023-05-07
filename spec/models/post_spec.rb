require 'rails_helper'

RSpec.describe Post, type: :model do

  describe '#validations' do
  	context 'without title' do
  	  let(:post) { build(:post, :title => nil) }

  	  it 'is invalid' do
  	  	expect(post).to_not be_valid
  	  end	
  	end

  	context 'without content' do
  	  let(:post) { build(:post, :content => nil) }

  	  it 'is invalid' do
  	  	expect(post).to_not be_valid
  	  end	
  	end

  	context 'without user' do
  	  let(:post) { build(:post, :user => nil) }

  	  it 'is invalid' do
  	  	expect(post).to_not be_valid
  	  end	
  	end


  	context 'with valid attributes' do
  	  let(:post) { build(:post) }

  	  it 'is invalid' do
  	  	expect(post).to be_valid
  	  end	
  	end	
  end	
end