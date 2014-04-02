require "scheduler/version"
require 'csv'
require 'scheduler/company'
require 'scheduler/timeslot'

module Scheduler
  def self.root
    spec = Gem::Specification.find_by_name('scheduler')
    gem_root = spec.gem_dir
    gem_lib = gem_root + '/lib'
    # File.expand_path __FILE__, '..'
  end
end
