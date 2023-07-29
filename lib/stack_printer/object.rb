# frozen_string_literal: true

class Object
  def sp_full
    StackPrinter.report
  end
  
  def sp_local
    StackPrinter.report(deep: false)
  end

  def sp_objects
    StackPrinter.report(as_object: true)
  end
  
  def sp_full_print
    StackPrinter.report(print: true)
  end

  def sp_local_print
    StackPrinter.pretty_report(deep: false, print: true)
  end
end
