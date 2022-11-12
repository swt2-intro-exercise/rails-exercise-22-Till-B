RSpec.describe "Authors", type: :model do
  it "should have required parameters and have a method called name" do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author.name).to eq("Alan Turing")
  end

  it "should not accept authors without last name" do
    @author = Author.new
    expect(@author).to_not be_valid
  end
end

