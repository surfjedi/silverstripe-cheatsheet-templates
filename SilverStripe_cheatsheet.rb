cheatsheet do
  title 'SilverStripe Templates'
  docset_file_name 'SilverStripe_Templates'
  keyword 'SS'
  source_url 'http://cheat.kapeli.com'
  
  style '
    td.td_command code
    {
      padding: 0px; 
      box-shadow: none;
      border: none;
      background: none;
    }
  '
  category do
    id 'Loops'
   
    entry do
      name 'Children Loop'
      notes <<-'END'
        ```ruby
        sample = "<% loop $Children %>...<% end_loop %>"
        ```
        Will loop over all children of the current page context. Helpful to create page-specific subnavigations. Most likely, you'll want to use <% loop $Menu %> for your main menus, since its independent of the page context.
      END
    end
    entry do
      name 'Children Loop of page-by-url'
      notes <<-'END'
        ```ruby
        sample="<% loop $ChildrenOf(<my-page-url>) %>...<% end_loop %>"
        ```
        Will loop over all children of the current page context. Helpful to create page-specific subnavigations. Most likely, you'll want to use <% loop $Menu %> for your main menus, since its independent of the page context.

        ```ruby
        sample="<% loop $allChildren %>...<% end_loop %>"
        ```
      END
    end
    entry do
      name 'Children Loop all children even if ShowInMenus is false'
      notes <<-'END'
        ```ruby
        sample="<% loop $allChildren %>...<% end_loop %>"
        ```
        Will loop over all children of the current page context. Helpful to create page-specific subnavigations. Most likely, you'll want to use <% loop $Menu %> for your main menus, since its independent of the page context.


      END
    end
  end


  category do
    id 'Access pages, levels, specific pages'
    entry do
      name 'Access level'
      notes <<-'END'
        ```ruby
        sample = "<% with $Level(1) %>
                      $Title
                  <% end_with %>"
        ```
        Will return a page in the current path, at the level specified by the numbers.
        It is based on the current page context, looking back through its parent pages.      
      END
    end
    entry do
      name 'Access specific page'
      notes <<-'END'
        ```ruby
        sample = "<% with $Page(my-page) %>...<% end_with %>"
        ```
        "Page" will return a single page from the site tree, looking it up by URL. You can use it in the <% loop %> format. 
        Can't be called using $Page(my-page).Title.      
      END
    end
  end

  category do
    id 'Links and Linking Modes'
    entry do
      name 'link is $LinkingMode'
      notes <<-'END'
        You are neither on this page nor in this section.      
      END
    end
    entry do
      name 'current is $LinkingMode'
      notes <<-'END'
        You are currently on this page.      
      END
    end
    entry do
      name 'section is $LinkingMode'
      notes <<-'END'
        The current page is a child of this menu item, so the current "section".      
      END
    end
    entry do
      name '$LinkOrCurrent'
      notes <<-'END'
        Determines if the item is the current page. Returns "link" or "current" strings.      
      END
    end
    entry do
      name '$LinkOrCurrent'
      notes <<-'END'
        Determines if the item is in the current section, so in the path towards the current page. Useful for menus which you only want to show a second level menu when you are on that page or a child of it. Returns "link" or "section" strings.
      END
    end
    entry do
      name '$InSection(page-url)'
      notes <<-'END'
        This if block will pass if we're currently on the page-url page or one of its children.
      END
    end
  end
end