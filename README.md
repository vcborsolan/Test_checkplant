# O que é este repositório?

Este repositório visa resolver o teste elaborado para x empresa.

### Como rodar o brojeto?

Para rodar o projeto pode-se :

1. Clonar o projeto 
2. instalar a dependencia => '$gem install rgeo'
3. rodar um script Ex: '$ruby scriptdestino.rb x argumentos'

### Exemplo de funcionalidade:

1. ampulhetas => ruby ampulhetas.rb 3 5 7
  
    Argumentos('tempo desejado' 'ampulheta1' 'ampulheta2')
   
    retornos => {

        * "Para que haja precisão no tempo desejado (#{ARGV[0]} minutos) será necessario gerenciar o processo por um tempo minimo de #{(arg[0]*2 + tempo_total)} minutos."
        * "Não é possivel fazer este calculo baseado nestas ampulhetas."
        * "Não podemos prosseguir dado que o tempo de uma das ampulhetas é menor que o tempo solicitado\nRecomendamos que verifique a sequencia dos argumentos:\n - Tempo solicitado: #{ARGV[0]}\n - Ampulheta 1 : #{ARGV[1]}\n - Ampulheta 2 : #{ARGV[2]}"
        * "A menor ampulheta representa metade da maior , entrariamos em loop e nunca chegariamos ao tempo solicitado.\nRecomendamos que veriique as ampulhetas."

    }

2. npontos => ruby npontos.rb 22.330779 47.604828 30.330779 74.604828 99.999999 88.888888

    Argumentos('latitude1' 'longitude1' 'latitude2' 'longitude2' 'latitude3' 'longitude3' ...)

    retornos => {
    
        * {:"-1|>0"=>4694255.514200139, :"0|>1"=>3030007.6794221387, :"1|>2"=>1674732.1671497698}
        
    }