class Contact < ActiveRecord::Base

  include AlgoliaSearch

  algoliasearch per_environment: true, auto_index: false, auto_remove: false do
    attributesToIndex ['name', 'unordered(email)', 'company']
    attributesForFaceting ['company']

    customRanking ['asc(name)']
  end

end
