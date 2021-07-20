module GuardsHelper

  def guard_status(guard)
  if (guard.appointment_date < Time.now)
    return 'table-danger'
  elsif (guard.appointment_date >= Time.now)
    return 'table-success'
  end
end

end
