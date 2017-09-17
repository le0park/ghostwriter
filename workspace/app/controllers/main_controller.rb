class MainController < ApplicationController
  def hello
    @sentence = Picture.new
    @sentence_obj = params[:sentence]
    file = File.new("original.png",'wb') 
    file.write(@sentence_obj.read)
    
    if file
      system("python3.4 image_parser.py")
    else 
      puts 'Unable open file'
    end
    
  end
  
  def create
  
  end
  
  def post_input
    aFile = File.new('data.txt', 'w')
    if aFile
      puts aFile.syswrite(params[:input])
      system("python3.4 imagetopdf.py")
    else 
      puts 'Unable open file'
    end
    redirect_to "/image/output"
  end
  
end
