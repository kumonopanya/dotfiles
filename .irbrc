###############################################################
####
####	.irbrc (irbの設定ファイル)
####
###############################################################

###############################################################

# インストール 起動前
# gem install wirble
# gem install irb_rocket
# gem install what_methods
# gem install tapp
# gem install ruby-terminfo
# gem install utility_belt
# gem install irbtools"

#win用
# gem install win32console

###############################################################

#uconvをインストール。
# sudo apt-get install libuconv-ruby1.8
# sudo apt-get install libuconv-ruby1.9.1


# cd ~/Downloads
# wget http://www.yoshidam.net/uconv-0.5.3.tar.gz
# tar zxvf uconv-0.5.3.tar.gz
# cd uconv
# ruby extconf.rb
# make
# make install

# sudo apt-get install libxml2-dev libxslt-dev
# sudo apt-get install libxslt-dev
# gem install nokogiri

###############################################################

if RUBY_VERSION < '1.9'
  $KCODE = 'u'
end

require 'kconv'
require 'rubygems'

#エイリアス
alias q exit
#utility_beltはqのエイリアスがかぶっており、
#exitのエイリアスが独自にxで設定されている。
#x でexit

	#irb上でライブラリを読み込み。
#	require 'action_mailer'
#	require 'action_pack'
#	require 'active_record'
#	require 'active_resource'
#	require 'active_support'
#	require 'active_model'
#	require 'nokogiri'
#	require 'open-uri'
#	require 'rcodetools'

	#<tab>		メソッド名が補完
	#<Ctr>+p	1 つ 前の履歴を取り出す
	#<Ctr>+r	インクリメンタル検索

	## 補完を有効にする
	require 'irb/completion'

	# what? でメソッドを調べることができるようにする
	#require 'what_methods'
	#irb(main):001:0> "1234".what? 1234
	#"1234".to_i == 1234
	#"1234".to_f == 1234
	#=> ["to_i", "to_f"]

	#デバッグ関連
	require 'pp'
	#1.8.系の人は要require 'rubygems'
	#ppをさらに発展させたもの？
	#require 'tapp'

	# ヒストリの設定
	#shellの↑で履歴をたどれることができるようにする
	IRB.conf[:SAVE_HISTORY]=100000

	# オートインデント
	IRB.conf[:AUTO_INDENT]=true


##########################################################


# IRB.conf[:SAVE_HISTORY] = 100000

# begin
#   require 'wirble'
#   Wirble.init(:history_size => 10000)
#   Wirble.colorize

#   # Wirble::Colorize.colors = {
#   #   # delimiter colors
#   #   :comma              => :white,
#   #   :refers             => :white,
#   # 
#   #   # container colors (hash and array)
#   #   :open_hash          => :white,
#   #   :close_hash         => :white,
#   #   :open_array         => :white,
#   #   :close_array        => :white,
#   # 
#   #   # object colors
#   #   :open_object        => :light_red,
#   #   :object_class       => :red,
#   #   :object_addr_prefix => :blue,
#   #   :object_line_prefix => :blue,
#   #   :close_object       => :light_red,
#   # 
#   #   # symbol colors
#   #   :symbol             => :blue,
#   #   :symbol_prefix      => :blue,
#   # 
#   #   # string colors
#   #   :open_string        => :light_green,
#   #   :string             => :light_green,
#   #   :close_string       => :light_green,
#   # 
#   #   # misc colors
#   #   :number             => :light_blue,
#   #   :keyword            => :orange,
#   #   :class              => :red,
#   #   :range              => :light_blue,
#   # }
# rescue LoadError
#   puts "please run: `sudo gem install wirble`"
# end




##########################################################


##########################################################

#wirbleの拡張機能1
	## wirbleを使って色をつける
	#require 'wirble'
	#Wirble.init(:skip_prompt => :DEFAULT)
	#Wirble.colorize

##########################################################

#wirbleの拡張機能2
	#Ruby1.9では修正する必要がある。
	#http://d.hatena.ne.jp/suzumura_ss/20100824/1282670143
	#require 'utility_belt'

	#v(verbose)  - irbの出力結果を表示する
	#q(quiet)    - irbの出力結果を非表示にする

	#>> hoge = {:fuga => "bar" }
	#=> {:fuga=>"bar"}
	#>> hoge += {:hige => "baz"}
	#=> {:fuga=>"bar", :hige=>"baz"}
	#>> hoge -= :fuga
	#=> {:hige=>"baz"}



##########################################################

#wirbleの拡張機能3
#utility_beltよりも機能が少ないので使っていない。
#irb_rocketはwirble と ruby-terminfo に依存している。
#	require 'irb_rocket'


##########################################################
##########################################################















##########################################################



# begin
#   require 'hirb'
#   Hirb.enable
#   extend Hirb::Console
# rescue LoadError
# #  puts "please run: `sudo gem install cldwalker-hirb --source http://gems.github.com`"
#   puts "please run: `sudo gem install hirb"
# end


if Object.const_defined?('Rails')
  require 'logger'
  putslogger = Logger.new(STDOUT)

  if ENV.include?('RAILS_ENV')&& !const_defined?('RAILS_DEFAULT_LOGGER')
    Object.const_set('RAILS_DEFAULT_LOGGER', putslogger)
  else
    if Object.const_defined?('ActiveRecord')
      ActiveRecord::Base.logger = putslogger
    end
    if Object.const_defined?('Mongoid')
      Mongoid.logger = putslogger
    end
  end
end

if Object.const_defined?('Bundler')
  Bundler.require(:irb)
else
  begin
    require 'irbtools'
  rescue LoadError
    puts "please run: `gem install irbtools"
  end
end

module Handy
  # Call Kernel#p method with self.
  def _p
    p self
    self
  end

  # Call Kernel#pp method with self.
  def _pp
    pp self
    self
  end


  # Call Kernel#puts method with self.
  def pt
    puts self
    self
  end

  # Stans for 'puts methods'.
  #
  # Show instance methods with detail.
  def pm(pattern = nil)
    klass = self.is_a?(Class) ? self : self.class
    ancs = klass.ancestors
    mtds = self.methods
    mtds = mtds.grep(pattern) if pattern
    mtds.sort.each do |e|
      ent = ancs.find {|c| c.instance_methods(false).include?(e) }
      ent ||= "self"
      puts "#{e} in #{ent}"
    end
  end

  # Stans for 'puts ancestors'.
  #
  # Show ancestors for self class. Included modules show with prefix '-'.
  def pa
    klass = self.is_a?(Class) ? self : self.class
    inc_mods = klass.included_modules
    klass.ancestors.each do |c|
      puts inc_mods.include?(c) ? "-#{c}" : "#{c}"
    end
  end

  # Stans for 'puts hierarchy'.
  #
  # Show classes extended or included self class.
  def ph
    klass = self.is_a?(Class) ? self : self.class
    ObjectSpace.each_object(Class).select {|c| c < klass }.pt
  end

  # Stans for 'puts class variables'.
  #
  # Show class variables name with value.
  def pcv
    klass = self.is_a?(Class) ? self : self.class
    klass.class_variables.each do |vn|
      puts "#{vn} = #{klass.class_eval(vn).inspect}"
    end
  end

  # Stans for 'puts instance variables'.
  #
  # Show instance variables name with value.
  def piv
    self.instance_variables.each do |vn|
      puts "#{vn} = #{self.instance_eval(vn).inspect}"
    end
  end

  def grep(pattern, glob)
    Dir.glob(glob).each do |path|
      content = open(path){|io| io.read }
      paths = []
      if content.match(pattern)
        paths << path           # 
        yield path, content if block_given?
      end
      paths
    end
  end

  def glob_replace(glob)
    Dir.glob(glob).each do |path|
      content = open(path){|io| io.read }
      content = yield(content)
      open(path, 'w'){|io| io.puts(content) }
    end
  end
end

Object.send(:include, Handy)

#require check
begin
rescue LoadError => err
	warn "Couldn't load require: #{err}"
end


