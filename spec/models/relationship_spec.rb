require 'rails_helper'

RSpec.describe Relationship, type: :model do
  describe '#validation' do
  	context 'without follower' do
  	  let(:relationship) { build :relationship, :follower => nil }	
  	  it 'is not valid' do
  	  	expect(relationship).to_not be_valid
  	  end	
  	end

  	context 'without followed' do
  	  let(:relationship) { build :relationship, :followed => nil }	
  	  it 'is not valid' do
  	  	expect(relationship).to_not be_valid
  	  end	
  	end

  	context 'with proper attributes' do
  	  let(:relationship) { build :relationship }	
  	  it 'is not valid' do
  	  	expect(relationship).to be_valid
  	  end	
  	end	
  end
end