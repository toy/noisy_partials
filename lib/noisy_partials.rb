module ActionView
  module RenderablePartial
    def render_partial_with_marks(*args)
%Q{
<!-- Partial start #{path} -->
#{render_partial_without_marks(*args)}
<!-- Partial end #{path} -->
}
    end

    alias_method_chain :render_partial, :marks
  end
end
