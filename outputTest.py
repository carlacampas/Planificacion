import sys

dict = {}

def main():
    h = int(input('número de habitaciones: '))
    n = int(input('número de reservas: '))
    i = 0
    while i < n:
        r = input('nombre reserva: ')
        l = list()
        j = 0

        while j < h:
            l.append(False)
            j += 1
        dict[r] = l
        i += 1
    

    act = ""
    actions = []
    
    print('gimme actions gimmeee (Type GO to finish introducing them)')
    while act != 'GO':
        act = input()
        actions.append(act)
        
    i = 0
    while i < len(actions)-1:
        str = actions[i]
        st = str.find('H')
    
        st += 1
        aux = str[st:]
        end = st+aux.find(' ')

        hab = int(str[st:end])

        if 'RESERVAR' in str:
            res = str[end+1:]
            dict[res.lower()][hab-1] = True

        elif 'ELIMINAR' in str:
            st = end+1
            aux = str[st:]
            end = st+aux.find(' ')
            
            res2 = str[end+1:]
            dict[res2.lower()][hab-1] = False
        
        i += 1
    
    for key in dict.keys():
        print(key)
        print(dict[key])

if __name__ == '__main__':
    main()