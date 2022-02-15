# frozen_string_literal: true

module Web
  class CommentsController < ApplicationController
    def create
      @comment = post.comments.build(comment_params.merge(user: current_user))

      if @comment.save
        redirect_to(post, notice: t('.success'))
      else
        redirect_to(post, alert: t('.failure'))
      end
    end

    private

    def post
      @post ||= Post.find(params[:post_id])
    end

    def comment_params
      params.require(:post_comment).permit(:content, :parent_id)
    end
  end
end
