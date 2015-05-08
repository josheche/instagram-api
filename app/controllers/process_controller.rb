class ProcessController < ApplicationController
  def tag
    redirect_to hashtag_path(params['tag'])
  end

  def next

  end
end
