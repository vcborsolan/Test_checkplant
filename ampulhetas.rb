def organize(int1 , int2)
    
    array = [int1.to_i , int2.to_i].sort
    
end

def try_timer(arg , tempo_total)

    if (arg[0]*2 - arg[1]) == ARGV[0].to_i
        return "Para que haja precisão no tempo desejado (#{ARGV[0]} minutos) será necessario gerenciar o processo por um tempo minimo de #{(arg[0]*2 + tempo_total)} minutos."

     elsif (arg[0]*2 - arg[1]) < 0

        return("Não é possivel fazer este calculo baseado nestas ampulhetas.")

     else

        arg[0] = arg[0]*2 - arg[1]

        try_timer(arg, arg[0]*2 + tempo_total)

    end

end

arg = organize(ARGV[1],ARGV[2])

if ARGV[0] >= ARGV[1] && ARGV[0] >= ARGV[2]
    puts("Não podemos prosseguir dado que o tempo de uma das ampulhetas é menor que o tempo solicitado\nRecomendamos que verifique a sequencia dos argumentos:\n - Tempo solicitado: #{ARGV[0]}\n - Ampulheta 1 : #{ARGV[1]}\n - Ampulheta 2 : #{ARGV[2]}")

 elsif arg[0]*2 == arg[1]
    puts("A menor ampulheta representa metade da maior , entrariamos em loop e nunca chegariamos ao tempo solicitado.\nRecomendamos que veriique as ampulhetas.")

 else
    
    puts(try_timer(arg , 0))

end