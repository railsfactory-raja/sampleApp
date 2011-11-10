module  NavigationHelpers
   def path_to(page_name)
    
      case page_name
      
      when /the home page/
        roo_path
       when /list of articles/
        articles_path
   
     #Add more name=>mapping here
     else
         raise "cant find mapping from \"#{page_name}\" to a path" 
      end
   end
 end
 
