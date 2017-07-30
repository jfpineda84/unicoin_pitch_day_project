module UsersHelper

  require "google/cloud/vision"

  def process_image(user)

    # Google vision API

    vision = Google::Cloud::Vision.new project: ENV["VISION_KEYFILE"]

    # used to convert S3 image content, pulled down my comp temp folder and converted to a path to be sent to google API
    image = vision.image Paperclip.io_adapters.for(user.image_upload).path

    # convertion of image to text via the API above
    text1 = image.text

    # taking string, and splitting the string into peaces
    text = text1.text.split("\n")

    # keys created for the hash
    keys = ['ssn', 'address', 'city', 'state', 'zip_code', 'money_earned', 'gross income', 'income tax']

    # Values of the keys above
    data = [get_ssn(text), get_address(text), get_city(text), get_state(text), get_zip_code(text), get_money_earned(text), get_gross_income(text), get_income_tax(text)]

    # creation of the keys and values into a hash
    data_for_creation = Hash[keys.zip(data)]

    p data_for_creation

    # these calls create the
    UserResponse.create!(
      question: Question.find_by(name: 'social'),
      response: data_for_creation["ssn"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'street_address'),
      response: data_for_creation["address"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'city'),
      response: data_for_creation["city"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'state'),
      response: data_for_creation["state"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'zip_code'),
      response: data_for_creation["zip_code"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'total_earnings'),
      response: data_for_creation["money_earned"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'adjusted_gross_income'),
      response: data_for_creation["gross_income"],
      user: user
    )
    UserResponse.create!(
      question: Question.find_by(name: 'income_tax'),
      response: data_for_creation["income_tax"],
      user: user
    )
  end

  # string interpolation for sorting through data based on repsonse needs


  def get_ssn(lines)
    criteria = [
      '\A\d{9}\z', # from beginning to end of string match 9 digits
    ].map do |needle|
      lines.select do |line|
        /#{needle}/.match(line)
      end
    end.flatten.map do |item|
      item
    end.flatten.each do |item|
      item
    end[0]
  end

  def get_address(lines)
    criteria = [
      'Home address',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 1]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end.first
  end

  def get_city(lines)
    criteria = [
      'City',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 1]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end.first.split(" ")[0]
  end

  def get_state(lines)
    criteria = [
      'City',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 1]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end.first.split(" ")[1]
  end

  def get_zip_code(lines)
    criteria = [
      'City',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 1]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end.first.split(" ")[2]
  end

  def get_money_earned(lines)
    criteria = [
      'Attach',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 1]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end[0]
  end

  def get_gross_income(lines)
    criteria = [
      'payment.',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 2]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end.first.split(" ")[1]
  end

  def get_income_tax(lines)
    criteria = [
      'If Form 8888',
    ].map do |needle|
      lines.map.with_index do |line, i|
        if /#{needle.downcase}/.match(line.downcase)
          [line, lines[i + 2]]
        end
      end.compact
    end.flatten(1).map do |item|
      item.last
    end.first.split(" ")[1]
  end

end
