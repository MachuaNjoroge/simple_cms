class DemoController < ApplicationController

  layout false
  
  def index
    @test = ['one','two','three','four','five']
    render('index')
    #@friends = ['a','b','c','d','e','f','g','h','i','j']
    @id = params['id']
    @page = params[:page]
  end

  def hello
    @test = ['one','two','three','four','five']
    render('hello')
  end

  def lynda
    redirect_to 'http://lynda.com'
  end
end
