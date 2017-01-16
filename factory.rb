class Factory
  def initialize(*args, &block)
    args.each {|a| instance_variable_set("@#{a}", nil)}
    self.class.class_eval(&block)
  end

  def new(*args)
    args.each do |a|
      instance_variables.each do |v|
        instance_variable_set(v, a)
      end
    end
    return self
  end
end