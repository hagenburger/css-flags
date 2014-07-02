require 'test_helper'

describe 'css-flags' do

  it 'should work' do
    assert render_sass(<<-SCSS).length > 0
      @import "css-flags";
      .flags {
        @include flags;
      }
    SCSS
  end

end

