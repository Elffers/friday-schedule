module Scheduler
  class Company
    attr_accessor :name, :room, :schedule

    def initialize(array)
      @name = array.first.strip
      @room = array.last.strip
    end

    def self.all
      @companies = CSV.read("#{Scheduler.root}/scheduler/companies.csv").map do |array|
        Company.new(array)
      end
    end

    def self.first
      Company.all.first
    end

    def self.last
      Company.all.last
    end

    def self.find_by_name(name)
      all.find do |company|
        company.name.to_s == name.to_s
      end
    end

    def schedule
      companies = %w[Expedia1 Expedia2 EMC Apex Foundry EnergySavvy]
      index = companies.find_index(self.name)
      schedule = {}
      TimeSlot.all.map do |time|
        schedule[time.time] = time.adies[index]
      end
      schedule
    end
  end
end
