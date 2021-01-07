=begin
  overview:
    - Take a string and break it into three letter codons, then
    - translate the codons into their amino acids.

  input:
    - codon (string)
    - strand (sting of multiple codons)

  output:
    - amino acid string or STOP
    - array of amino acid strings until STOP

  rules:
    - certain codes are STOP codon and the rest of the sequence is not
      translated
    - only amino acids up to stop are output
    - lookup table for each codon
    - InvalidCodonError if codon isn't in lookup table

    CLASS METHODS

  algorithm:
    - lookup table
    - of_codon class method
      - lookup codon in table and return amino acid string

    - of_rna class method
      - lookup slice of 3 until entire string has been examined OR until a
        slice returns STOP
      - if slice of 3 does not exist in table, raise InvalidCodonError

    -
=end

# class InvalidCodonError < StandardError
# end
#
# class Translation
#   AMINO_ACIDS = {
#     ['AUG'] => 'Methionine',
#     ['UUU', 'UUC'] =>	'Phenylalanine',
#     ['UUA', 'UUG'] =>	'Leucine',
#     ['UCU', 'UCC', 'UCA', 'UCG'] =>	'Serine',
#     ['UAU', 'UAC'] =>	'Tyrosine',
#     ['UGU', 'UGC'] =>	'Cysteine',
#     ['UGG'] => 'Tryptophan',
#     ['UAA', 'UAG', 'UGA'] => 'STOP'
#   }
#   def self.of_codon(codon)
#     AMINO_ACIDS.each { |k, v| return v if k.include?(codon) }
#     nil
#   end
#
#   def self.of_rna(strand)
#     proteins = []
#     strand.chars.each_slice(3) do |codon|
#       codon = of_codon(codon.join)
#       break if codon == 'STOP'
#       raise InvalidCodonError if codon == nil
#       proteins << codon
#   end
#
#     proteins
#   end
# end

class InvalidCodonError < StandardError
end

class Translation
  AMINO_ACIDS = {
    ['AUG'] => 'Methionine',
    ['UUU', 'UUC'] =>	'Phenylalanine',
    ['UUA', 'UUG'] =>	'Leucine',
    ['UCU', 'UCC', 'UCA', 'UCG'] =>	'Serine',
    ['UAU', 'UAC'] =>	'Tyrosine',
    ['UGU', 'UGC'] =>	'Cysteine',
    ['UGG'] => 'Tryptophan',
    ['UAA', 'UAG', 'UGA'] => 'STOP'
  }

  def self.of_codon(codon)
    AMINO_ACIDS.each do |codons, protein|
      return protein if codons.include?(codon)
    end
    raise InvalidCodonError
  end

  def self.of_rna(strand)
    strand.scan(/.../)
          .map { |codon| of_codon(codon) }
          .take_while { |protein| protein != 'STOP' }
  end
end
