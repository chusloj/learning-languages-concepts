#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main()
{
    vector<int> v1 = {1, 2, 3};
    cout << v1.capacity() << endl;
    cout << v1.size() << endl;
    v1.push_back(9);
    v1.push_back(3);
    cout << v1.capacity() << endl;
    cout << v1.size() << endl;
    v1.pop_back();
    v1.shrink_to_fit();
    cout << v1.capacity() << endl;
    cout << v1.size() << endl;

    cout << "new vector" << endl;
    cout << "\n";

    vector<int> v2 = {4, 3, 2, 1};
    v1.insert(v1.begin(), 5);
    cout << v1[0] << endl;
}