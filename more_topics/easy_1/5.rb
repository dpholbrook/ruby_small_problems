=begin
  input: text file
  output: decoded strings

  rules:
    - each string is encrypted with rot13
      - each character is its inverse (char + 13)

  algorithm:
    - get text file somehow
    - downcase string
    - split each string into chars
    - transform each char into its inverse
      - create two arrays, first half, and second half
        - if char is in first half, replace with char of same idx in second half
          - else if char is in second half, replace with char of same idx in seocnd half
          - if char is non alpha, next
    - returned transformed array and joined into a string capitalized
=end

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def rot13(string)
  alpha1 = ('a'..'m').to_a
  alpha2 = ('n'..'z').to_a

  string = string.downcase
  decoded = string.chars.map do |char|
    if alpha1.include?(char)
      alpha2[alpha1.index(char)]
    elsif alpha2.include?(char)
      alpha1[alpha2.index(char)]
    else
      char
    end
  end

  decoded.join.split.map(&:capitalize).join(' ')
end

peeps = "Tregehqr Oynapu"

ENCRYPTED_PIONEERS.each do |smart_person|
  puts rot13(smart_person)
end
