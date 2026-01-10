class HelloController < ApplicationController
  def index
    if request.post?
      @title = "Result"
      @s1 = params[:s1]
      if @s1
        @msg = "you selected \"#{@s1}\"."
      else
        @msg = "not checked..."
      end
      redirect_to action: :index, check1: @check1,
        title: @title, msg: @msg
    else
      @title = params[:title] || "Index"
      @msg = params[:msg] || "type text..."
      @value = params[:check1] == "true" || false
    end
  end
end
