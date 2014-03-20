require "formula"

class Reactor < Formula
  homepage "http://development.rc.ucl.ac.uk/training"
  url "https://github.com/UCL/rsd-cppcourse-example/archive/v4.1.zip"
  sha1 "7aca71baf3c379dda9521fc1e013ad187c6e63c9"
  version '0.1'

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    ENV.deparallelize
    mkdir 'build'
    cd 'build' do
      system "cmake", "../reactor", *std_cmake_args
      system "make install"
    end
  end
end
