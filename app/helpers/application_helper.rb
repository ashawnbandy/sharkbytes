module ApplicationHelper

  def autotab
    # Helper to control autotabbing in a logical order.
    # Keep in mind that if you decide to tab in a non-standard order (ie. not top
    # to bottom) then you will need to not use autotab at all.
    @current_tab ||= 0
    @current_tab += 1
  end

end
