require 'rufus-scheduler'
require 'redis'

module Dashing
  class Configuration

    attr_accessor :scheduler, :redis, :view_path, :jobs_path, :redis_namespace,
                  :engine_path, :dashboards_path, :dashboard_layout,
                  :widgets_path

    def initialize
      @scheduler        = ::Rufus::Scheduler.new
      @redis            = ::Redis.new
      @redis_namespace  = 'dashing_events'
      @view_path        = 'app/views/dashing/'
      @jobs_path        = 'app/jobs/'
      @engine_path      = '/dashing'
      @dashboards_path  = 'app/views/dashing/dashboards/'
      @dashboard_layout = 'dashing/dashboard'
      @widgets_path     = 'app/views/dashing/widgets/'
    end

  end
end
