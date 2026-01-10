class HelloController < ApplicationController
  layout "hello"

  def index
    @header = "layout sample"
    @fooder = "copyight mackey 2026."
    @title = "New Layout"
    @msg = "this is sample page!"
  end
end
