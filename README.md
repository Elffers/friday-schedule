# Scheduler

Since it was kind of a pain to figure out our interview schedule this Friday from Elise's email, here is a command-line gem to tell you who you're interviewing with when and in what room.

1.  Download this repo
2.  In your terminal, type: `rake install`

(this is like `gem install` except since this isn't on rubygems.org, you have to actually just run it locally)
    
3.  cd into the repo
4.  In your terminal, type:  

    $schedule "your firstname"

It only works with your capitalized first name. So for example, 

    $schedule "Hsing-Hui"
    
    
returns:

    Hsing-Hui's Interview Schedule:
    1:00 - 1:15: Foundry (Ada Office)
    1:20 - 1:35: EnergySavvy (Ada Conference Room)
    1:40 - 1:55: Apex (Georgetown Room)
    4:05 - 4:20: Expedia2 (Skype Room)
    4:25 - 4:40: EMC (Capitol Hill Room)
    4:45 - 5:00: Expedia1 (Surface Room)
    
Ta-da!

## Contributing

1. Fork it ( http://github.com/<my-github-username>/scheduler/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
