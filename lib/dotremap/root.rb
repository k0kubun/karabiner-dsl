require "dotremap/openurl"
require "dotremap/vkopenurldef"
require "dotremap/dsl/root"

class Dotremap::Root
  include Dotremap::XmlTree
  include Dotremap::DSL::Root

  def to_xml
    Dotremap::Openurl.registered_applications.each do |application|
      vkopenurldef = Dotremap::Vkopenurldef.new(application)
      add_child(vkopenurldef)
    end

    [
      "<?xml version=\"1.0\"?>",
      "<root>",
      [
        childs.map(&:to_xml).join("\n\n"),
      ].compact.join("\n").gsub(/^/, "  "),
      "</root>",
    ].join("\n")
  end
end
