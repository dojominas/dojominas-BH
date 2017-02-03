require_relative "../lib/telefone"
require "minitest/autorun"

class TelefoneTest < Minitest::Test
  def test_my_sweet_home
    assert_equal "1-4663-79338-4663 ", Telefone.new("1-HOME-SWEET-HOME ").traduz
  end

  def test_my_miserable_job
  	assert_equal "69-647372253-562", Telefone.new("MY-MISERABLE-JOB").traduz 
  end

  def test_cairo
  	assert_equal "22476", Telefone.new("CAIRO").traduz
  end

  def test_pao_de_queijo_com_1
  	assert_equal "1-726-33-783456", Telefone.new("1-PAO-DE-QUEIJO").traduz
  end

  def test_suco_de_uva_com_0
  	assert_equal "7826-33-0-882", Telefone.new("SUCO-DE-0-UVA").traduz
  end

  def test_vovo
  	assert_equal "8686", Telefone.new("VOVO").traduz
  end

end