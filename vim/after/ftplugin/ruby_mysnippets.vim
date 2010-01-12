if !exists('loaded_snippet') || &cp
    finish
endif

Snippet : :<{}> => <{}>
Snippet :: :<{}> => :<{}>

Snippet pt puts <{}>
Snippet ps puts '<{}>'<{}>
Snippet pd puts "<{}>"<{}>

" ERB
Snippet rc <% <{}> -%>
Snippet rce <%= <{}> %><{}>

" Same as TextMate  *********************************

Snippet rb #!/usr/bin/env ruby

" Structure
Snippet mod module <{}><CR><{}><CR>end
Snippet cla class <{}><CR><{}><CR>end
Snippet def def <{}><CR><{}><CR>end

Snippet if if <{condition}><CR><{}><CR>end<CR>
Snippet elsif elsif <{}>
Snippet until until <{condition}><CR><{}><CR>end<CR>

" Attributes
Snippet r attr_reader :<{}>
Snippet w attr_writer :<{}>
Snippet rw attr_accessor :<{}>

Snippet rb #!/usr/bin/env ruby -wKU<{}>
Snippet req require '<{}>'<CR><{}>

" tim times { |n| .. }
" upt upto(1.0/0.0) { |n| .. }
" ste step(2) { |e| .. }

" ea each { |e| .. }
" eawi each_with_index { |e, i| .. }
" reve reverse_each { |e| .. } 
" inj inject(init) { |mem, var| .. }
" map map { |e| .. }
" mapwi map_with_index { |e, i| .. }
" mapwi- map_with_index { |e, i| .. }

" Test/Unit
Snippet tc require 'test/unit'<CR><CR>require '<{library}>'<CR><CR>class Test<{class}> < Test::Unit::TestCase<CR>def test_<{casename}><CR><{}><CR>end<CR>end
Snippet deft def test_<{casename}><CR><{}><CR>end

Snippet as assert <{test}><CR><{}>
Snippet ase assert_equal <{expected}>, <{actual}><CR><{}>
Snippet asne assert_not_equal <{unexpected}>, <{actual}><CR><{}>

" RSpec
Snippet macspec require File.dirname(__FILE__) + '/../spec_helper'<CR><CR>class <{class}>Spec < Test::Unit::TestCase<CR>def setup<CR>end<CR><CR>it "<{}>" do<CR>end<CR><CR>def teardown<CR>end<CR>end
Snippet des describe '<{description}>' do<CR>it 'should <{}>' do<CR><{}><CR>end<CR>end
Snippet desct describe <{Type}> do<CR>it 'should <{}>' do<CR><{}><CR>end<CR>end
  
Snippet b4 before do<CR><{}><CR>end
Snippet bef before(:each) do<CR><{}><CR>end
Snippet a4 after do<CR><{}><CR>end
Snippet aft after(:each) do<CR><{}><CR>end  
  
Snippet it it '<{description}>' do<CR><{}><CR>end  
Snippet ra raise <{response.body}>.inspect
Snippet pl PLANNED:<CR><CR>DONE:<CR>- @planning 1 => 1<CR><CR>NOT DONE:<CR><CR>STANDUP:<CR>- @yesterday<CR>- @yesterday<CR>- @today<CR>- @today<CR><CR>POMOSPECTIVE:<CR><CR>INTERRUPTS:<CR>
