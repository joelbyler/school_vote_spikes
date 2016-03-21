
class BallotsController < ApplicationController
    def index
        service = BallotLookupService.new('11978 Lockage Rd NW, Canal Fulton, OH')
        
        @ballot = service.fetch_ballot
    end
    
end
