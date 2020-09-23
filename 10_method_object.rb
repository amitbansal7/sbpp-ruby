# frozen_string_literal: true

# Create a class named after the method. Give it an instance variable for the receiver of the original method, each argument, and
# each temporary variable. Give it a Constructor Method that takes
# the original receiver and the method arguments. Give it one
# instance method, #compute, implemented by copying the body
# of the original method. Replace the method with one that creates
# an instance of the new class and sends it #compute.
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
