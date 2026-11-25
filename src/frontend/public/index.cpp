#include <iostream>

using namespace std;

int main(int argc, char const *argv[]){
    /* code */
    for (int age = 0; age < 25; age++){
        /* code */
        if (age < 5){ /* condition */
            /* code */
            cout << "Eres un bebe" << endl;
        }
        else{
            /* code */
            if (age > 5 && age < 12){ /* condition */
                /* code */
                cout << "Eres un niño" << endl;
            }
            else{
                /* code */
                if (age > 12 && age < 18){ /* condition */
                    /* code */
                    cout << "Eres un adolescente" << endl;
                }
                else{
                    /* code */
                    if (age > 18 && age < 50){ /* condition */
                        /* code */
                        cout << "Eres un adulto" << endl;
                    }
                    else{
                        /* code */
                        cout << "Eres un adulto mayor" << endl;
                    }
                }
            }
        }
    }
    
    return 0;
}
