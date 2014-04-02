require "scheduler/version"
require 'csv'
require 'scheduler/company'
require 'scheduler/timeslot'

module Scheduler
  def self.root
    File.expand_path '../..', __FILE__
  end
end
