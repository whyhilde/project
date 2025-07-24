#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main() {
    setlocale(LC_ALL, "RU");
    
    string default_config = "save_time = 604800
    local_language = ENG";
    
    ofstream file("config.ini", ios_base::out);
    if(file.is_open()) {
        file << default_config << endl;
        file.close();
    }

    return 0;
}