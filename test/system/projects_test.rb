require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase

  setup do
    @project = projects(:hello_project_1)
  end

  test "visit index" do
    sign_in users(:vidur_punj)
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "can create project" do
    sign_in users(:vidur_punj)
    visit project_url(@project)
    click_on "Edit this project", wait: 1
    fill_in "Title", with: "Hello project 1", wait: 1
    click_on "Update Project"
    # check if the text is updated
    assert_selector "p", text: "Hello project 1", wait: 2
  end

  test "can delete a project" do
    sign_in users(:vidur_punj)
    visit project_url(@project)
    click_on "Destroy this project", match: :first # to click on first object with this text

    assert_selector "p", text: "Project was successfully destroyed."
  end
end
