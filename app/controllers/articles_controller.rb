class ArticlesController < ApplicationController
  #before_filter :authenticate_user!
  def index
    @articles = Article.all
  end
  
  def show
    @article =Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    #@article = Article.all
    @article =Article.new(params[:article])
    @article.user_id = current_user.id
    @article.profile_id = current_user.profile.id
    
   respond_to do |format|
    if @article.save
          #~ format.html { redirect_to (@article, :notice=>"Article added successfuly" )}
          format.html { redirect_to (@article )}
          format.xml  { head :ok }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
        end
      end
  end
  
  def edit
    @article =Article.find(params[:id])
  end
  
  def update
    #@article = Article.all
    @article =Article.find(params[:id])
     respond_to do |format|
      if @article.update_attributes(params[:article])
        #~ format.html { redirect_to(@article, :notice=>"Updated successfuly" ) }
        format.html { redirect_to(@article) }
        
        format.xml  { head :ok }
      else
        format.html { render :action => "edit"}
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @article =Article.find(params[:id])
    @article.destroy
    respond_to do |format|
        #~ format.html { redirect_to(@article, :notice=>"Deleted successfuly" ) }
        format.html { redirect_to(@article) }
    end
  end

end
