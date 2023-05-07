class PostDecorator < Draper::Decorator
  delegate_all

  def visible_yes_no
  	visible ? 'Yes' : 'No'
  end
end
