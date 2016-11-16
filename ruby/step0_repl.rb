#! /usr/bin/env ruby

require 'readline'

class MAL
  def READ(s)
    s
  end

  def EVAL(s, env={})
    s
  end

  def PRINT(s)
    s
  end

  def REP(s)
    self.PRINT(self.EVAL(self.READ(s)))
  end

  def run
    while s = Readline.readline('user> ', true)
      puts self.REP(s)
    end
  end
end

MAL.new.run
