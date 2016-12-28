module InstalikesHelper
  def choose_new_or_edit
    if action_name == 'new'
      instalikes_path
    elsif action_name == 'edit'
      instalike_path
    end
  end
end
