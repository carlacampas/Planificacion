import sys

dict = {}

def main():
    h = input('introduce lista habitaciones: ')
    lh = h.split(' ') 

    #r = input('introduce lista reservas: ')
    #lr = r.split(' ')
        
    for x in lh:
        dict[x] = set()
    
    

    print('Initial state:')
    for key in dict.keys():
        print(key)
        print(dict[key])
    print ('-----------------------------')


    act = ""
    actions = []
    
    print('gimme actions gimmeee (Type GO to finish introducing them)')
    while act != 'GO':
        act = input()
        actions.append(act)
        
    i = 0
    while i < len(actions)-1:
        str = actions[i]

        if 'DESCARTAR' not in str and 'REACH-GOAL' not in str:
            st = str.find(' H')
        
            st += 1
            aux = str[st:]
            end = st+aux.find(' ')

            hab = str[st:end]

            if 'RESERVAR' in str:
                #print('reservar ') 
                res = str[end+1:]
                #print(res), print(hab)
                dict[hab.lower()].add(res.lower())
            elif 'ELIMINAR' in str:
                #print('eliminar')
                st = end+1
                aux = str[st:]
                end = st+aux.find(' ')
                
                res2 = str[end+1:]
                dict[hab.lower()].remove(res2.lower())
                #print(res), print(hab2) 
            elif 'CAMBIO_H' in str:
                #print('cambio_h')
                st = end+1
                aux = str[st:]
                end = st+aux.find(' ')
                
                hab2 = str[st:end]
                res = str[end+1:]

                dict[hab.lower()].remove(res.lower())
                dict[hab2.lower()].add(res.lower())
                #print(res), print(hab), print(hab2) 

            elif 'CAMBIO_R' in str:
                #print('cambio_r')
                st = end+1
                aux = str[st:]
                end = st+aux.find(' ')
                
                res1 = str[st:end]
                res2 = str[end+1:]

                dict[hab.lower()].remove(res1.lower())
                dict[hab.lower()].add(res2.lower())
                #print(res), print(res2), print(hab) 
        i += 1
    

    
    for key in dict.keys():
        print(key, end = ': ') 
        for x in dict[key]:
            print(x, end = ' ')
        print()

if __name__ == '__main__':
    main()