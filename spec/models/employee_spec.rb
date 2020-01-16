require 'rails_helper'

describe Employee do
  it { should belong_to(:division)}
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }
  it("titleizes the name of an division") do
    employee = Employee.create({name: "marketing"})
    expect(employee.name()).to(eq("Marketing"))
  end

  it { should have_and_belong_to_many :projects }
end
