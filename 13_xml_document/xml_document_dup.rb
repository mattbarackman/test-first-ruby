class XmlDocument

  def initialize(indent = false)
    @indent = indent
  end

  def send(tag_name, params = nil)
    
    if block_given?
      return do_with_block(tag_name, params) do yield end
    else
      return do_without_block(tag_name, params)
    end
  end

  def do_with_block(tag_name, params = nil)
    params = process_params(params)
    "<#{tag_name}#{params}>"+"#{yield_process(yield)}"+"</#{tag_name}>" 
  end

  def do_without_block(tag_name, params = nil)
    params = process_params(params)
    "<#{tag_name}#{params}/>" 
  end

  def yield_process(yield_content)
    if /@xml/.match(yield_content)
      # puts "nomatch: " + "#{yield_content}"
      return "\n"+"#{yield_content}"
    else
      # puts "match: " + "#{yield_content}"
      return yield_content
    end
  end


  def process_params(params)
    unless params.nil? 
      key = params.first[0]
      value = params.first[1]
      params = " #{key}='#{value}'"
    end
    params
  end


  def hello(params = nil)
    if block_given?
      return send("hello", params) do yield end
    else
      return send("hello", params)
    end
  end

  def goodbye(params = nil)
    if block_given?
      puts yield
      return send("goodbye", params) do yield end
    else
      return send("goodbye", params)
    end
  end

  def come_back(params = nil)
    if block_given?
      return send("come_back", params) do yield end
    else
      return send("come_back", params)
    end
  end

  def ok_fine(params = nil)
    if block_given?
      return send("ok_fine", params) do yield end
    else
      return send("ok_fine", params)
    end
  end


end
