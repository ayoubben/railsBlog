class CreateComment
  include Interactor

  def call
    new_comment = Comment.new(text: context.text, post_id: context.post_id)
    context.comment = new_comment
    context.fail! unless new_comment.save
  end
end
