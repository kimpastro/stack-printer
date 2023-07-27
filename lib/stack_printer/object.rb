# frozen_string_literal: true

class Object
  def sp_full
    StackPrinter.report
  end
  
  def sp_local
    StackPrinter.report false
  end
  
  def sp_full_pretty
    StackPrinter.pretty_report
  end

  def sp_local_pretty
    StackPrinter.pretty_report false
  end
end
