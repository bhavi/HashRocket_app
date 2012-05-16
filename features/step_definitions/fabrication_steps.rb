World(FabricationMethods)

def with_ivars(fabricator)
  @they = yield fabricator
  instance_variable_set("@#{fabricator.model}", @they)
end

Given /^(\d+) ([^"]*)$/ do |count, model_name|
  with_ivars Fabrication::Cucumber::StepFabricator.new(model_name) do |fab|
    fab.n(count.to_i)
  end
end




