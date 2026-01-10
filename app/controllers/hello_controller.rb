class HelloController < ApplicationController
  layout "hello"

  def index
    @header = "layout sample"
    @fooder = "copyight mackey 2026."
    @title = "Session sample"

    if request.post?
      if params[:name].blank?
        flash[:notice] = "Please input your name!"
      else
        @msg = "Hello #{params[:name]}!"
        flash[:notice] = "登録が完了しました！"
      end
      redirect_to action: "index", title: @title
    else
      @msg = params[:msg]? params[:msg] : "Sample flash."
    end
  end
end
