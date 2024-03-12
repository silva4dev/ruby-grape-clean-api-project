# frozen_string_literal: true

require_relative '../../../../http/controllers/find_tasks/find_tasks_controller'
require_relative '../../../../data/usecases/db_find_tasks'
require_relative '../../../../external/db/postgresql/task/pg_task_repository'

class FindTasksControllerFactory
  def self.create
    task_repository = PgTaskRepository.new
    db_find_tasks_usecase = DbFindTasks.new(task_repository)
    FindTasksController.new(db_find_tasks_usecase)
  end
end