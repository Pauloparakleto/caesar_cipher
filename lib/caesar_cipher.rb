def caesar_cipher string=".", number
    puts "Caesar_cipher initialized..."
    @string = string
    @number = number
    @table = {a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, 
            j: 9, k: 10, l: 11, m: 12, n: 13, o: 14, p: 15, q: 16, 
            r: 17, s: 18, t: 19, u: 20, v: 21, w: 22, x: 23, y: 24, z: 25}

    @table_keys = @table.keys
    @array_string_criptografado = []
    @counter = 0

    while @counter < @string.length
        if @string[@counter] == " "
            @array_string_criptografado = @array_string_criptografado.push(" ")
        elsif @string[@counter] == "."
            @array_string_criptografado = @array_string_criptografado.push(".")
        elsif @string[@counter] == "!"
            @array_string_criptografado = @array_string_criptografado.push("!")
        elsif @string[@counter] == "?"
            @array_string_criptografado = @array_string_criptografado.push("?")
        elsif is_it_upcase? == true
            @criptografia = @table[:"#{@string[@counter].downcase}"].to_i + @number
            if @criptografia > 25
                @criptografia = @criptografia - 26
            end
            @array_string_criptografado = @array_string_criptografado.push(@table_keys[@criptografia].upcase)
            else
                @criptografia = @table[:"#{@string[@counter]}"].to_i + @number
                if @criptografia > 25
                @criptografia = @criptografia - 26
                end
                @array_string_criptografado = @array_string_criptografado.push(@table_keys[@criptografia])
            
        end
        
        @counter = @counter + 1
    end
    return @array_string_criptografado.join()
end
def is_it_upcase?
    @string[@counter] != @string[@counter].downcase
end


#cript = Caesar_cipher.new
