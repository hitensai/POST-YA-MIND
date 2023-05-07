require 'rails_helper'

RSpec.describe PostDecorator do
  let(:post) { build :post, :visible => visible }
  let(:subject) { post.decorate }

  describe '#visible_yes_no' do
  	context 'when visible is false' do
  	  let(:visible) { false }
  	  it 'returns No' do
  	  	expect(subject.visible_yes_no).to eq 'No'
  	  end	
  	end	

  	context 'when visible is true' do
  	  let(:visible) { true }
  	  it 'returns Yes' do
  	  	expect(subject.visible_yes_no).to eq 'Yes'
  	  end	
  	end	
  end	
end
