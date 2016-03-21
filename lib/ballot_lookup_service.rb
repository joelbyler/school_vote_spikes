require 'google-maps'
# require 'google-civic-ruby'
require 'net/http'

class BallotLookupService
    CIVIC_INFO_URL = 'https://www.googleapis.com/civicinfo/v2/voterinfo'

    def initialize(address)
        @address = address
    end
    
    def fetch_ballot
         YAML.load_file "#{Rails.root}/lib/data/ballots/oh.yml"
        # binding.pry
        [
            {
                national:[
                    {
                        issue: 'president',
                        candidates:
                            [
                                {
                                    id: 1,
                                    party: 'democrat',
                                    name: 'Hillary Clinton',
                                    details: 'American politician and former First Lady'
                                },
                                {
                                    id: 2,
                                    party: 'republican',
                                    name: 'Donald Trump',
                                    details: 'American businessman, politician, television personality'
                                }

                            ]
                    }
                ]
            }
        ]
    end

end
