require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
    test "the truth" do
        assert true
    end

    test "should not save article without title" do
        article = Article.new
        assert_not article.save, "Saved article without a title."
    end

    test "should report error" do
        # some_undefined_variable is not defined anywhere, so this should raise an error
        assert_raises(NameError) do
            # since we assert that it raises a NameError, this test will now pass
            some_undefined_variable
        end
    end
end
