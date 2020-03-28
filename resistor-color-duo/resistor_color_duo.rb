class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors)
    color_numbers = colors.map { |color| COLORS.index(color) }
    color_numbers[0] * 10 + color_numbers[1]
  end
end