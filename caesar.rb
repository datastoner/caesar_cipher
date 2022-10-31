#this is the code for caesar project by datastoner @akshar99

# Caesar is the type of encryption in which every alphabet is shifted 
# Caesar should be UDF which will take two parameters String and Number by which encryption should be shifted
# For Example-  caesar(string, num ) 
# The Characters have to be in upcase which were input as an upcase
# Space have to be considered

def Caesar(str, num)
    len = str.length
    cases = Array.new(len, 0)
    emp, ems, op, idxs= [],[],[], []
    for i in 0..len do
        if str[i] =~ /[A-Z]/
            cases[i] = 1
        end
    end
    l_str = str.downcase
    l_str.each_char do |char|
        if char.ord.between?(97, 122)
            emp.push(char.ord + num)
        else
            emp.push(char.ord)
        end
    end
    emp.each do |val|
        if val > 122
            val = 96 + (val - 122)
            ems.push(val)
        else
            ems.push(val)
        end
    end
    ems.each do |vals|
        op.push(vals.chr)
    end
    ciphered = op.join("")
    ciph = ciphered.to_s
    #puts ciph.class
    char = ciph.chars

    cases.each_with_index do |num, idx|
        if (num == 1)
            idxs.push(idx)
        end
    end

    idxs.each do |num|
        ciph[num] = ciph[num].upcase
    end
    puts "Original :#{str}" 
    puts "Ciphered :#{ciph}"

end

Caesar("Hello World !", 1)
