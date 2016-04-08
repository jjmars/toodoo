module TasksHelper
  def link_to_update_status(task)
    if task.status == 0
      btn_class = 'btn btn-xs btn-info'
      icon_class = 'fa fa-play-circle-o'
      update_task_path = task_path(task, task: { status: 1 } )
    else
      btn_class = 'btn btn-xs btn-success'
      icon_class = 'fa fa-check-circle-o'
      update_task_path = task_path(task, task: { status: 2 } )
    end
  
    link_to update_task_path, class: btn_class, method: :patch, remote: true do
      content_tag(:i, '', class: icon_class).html_safe
    end
  end
  
  def link_to_delete_task(task)
    link_to task, class: 'btn btn-xs btn-danger', method: :delete, remote: true, data: { confirm: 'Are you sure?', disable_with: '<i class="fa fa-refresh fa-spin"></i>' }, :'sr-only' => 'Delete' do
      content_tag(:i, '', class: 'fa fa-trash').html_safe
    end  
  end
end
