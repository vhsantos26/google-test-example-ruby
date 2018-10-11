module App
  module Pages
    module Search
      class IndexPage < SitePrism::Page
        set_url '/'

        element :search_input, 'input[title=Search]'

        def search_for(informacao)
          search_input.set informacao
          search_input.send_keys :enter
        end
      end
    end
    module Result
      class IndexPage < SitePrism::Page
        elements :results, 'div.rc'
      end
    end
  end
end
