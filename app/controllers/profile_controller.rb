class ProfileController < ApplicationController
   before_filter :authenticate_user!
  def show
   # @profile =current_user.profile
   # puts params[:id].inspect
    #puts  @profile.inspect
    @profile =current_user.profile
  end

  def index
      @profile =current_user.profile
  end

  def new
      if @profile =current_user.profile
        redirect_to :action=> "show"
        else
          @profile =Profile.new
      end
  end

  def create
    @profile =Profile.new(params[:profile])
    @profile.user_id = current_user.id
    
   respond_to do |format|
    if @profile.save
          format.html { redirect_to (@profile, :notice=>"Your profile created successfuly" )}

          format.xml  { head :ok }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
        end
      end
  end

  def edit
      @profile =current_user.profile
  end

  def update
    @profile =current_user.profile
     respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to(@profile, :notice=>"Updated successfuly" ) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit"}
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
  end

end
