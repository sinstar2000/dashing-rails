require 'spec_helper'

describe Dashing::Configuration do

  let(:instance) { Dashing::Configuration.new }

  it { expect(instance.scheduler).to              be_a(::Rufus::Scheduler::PlainScheduler) }
  it { expect(instance.redis).to                  be_a(::Redis) }
  it { expect(instance.redis_namespace).to        eq('dashing_events') }
  it { expect(instance.view_path).to              eq('app/views/dashing/') }
  it { expect(instance.jobs_path).to              eq('app/jobs/') }
  it { expect(instance.engine_path).to            eq('/dashing') }
  it { expect(instance.dashboards_path).to        eq('app/views/dashing/dashboards/') }
  it { expect(instance.dashboard_layout).to       eq('dashing/dashboard') }
  it { expect(instance.widgets_path).to           eq('app/views/dashing/widgets/') }
  it { expect(instance.default_dashboard).to      be_nil }
  it { expect(instance.auth_token).to             be_nil }
  it { expect(instance.devise_allowed_models).to  be_empty }

end
