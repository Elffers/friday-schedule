module Scheduler
  class TimeSlot
    attr_accessor :time, :adies

    def initialize(array)
      @time = array.first
      @adies = array.last
    end

    def self.all
      @times ||= File.readlines("timeslots.txt").map do |line|
        time = line.match(/\d+:\d+\s\-\s\d+:\d+/)
        adies = time.post_match.strip.split(/\s+/)
        TimeSlot.new([time.to_s, adies])
      end
      @times
    end
  end
end