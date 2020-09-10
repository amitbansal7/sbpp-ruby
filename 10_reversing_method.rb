class TaskSender
  attr_accessor :obligation, :task, :job, :not_processed,
                :processed, :copied, :executed

  def initialize(obligation, task, job)
    @obligation = obligation
    @task = task
    @job = job
  end

  def call
    puts 'Doing some work using instance variables'
  end
end

class Obligation
  def self.send_task(task, job)
    TaskSender.new(self, task, job).call
  end
end

Obligation.send_task('abc', 'bcd')
