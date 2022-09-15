#include <iostream>
#include <string>
#include <set>
using namespace std;

int main()
{
    set<char> s1 = {'A', 'C', 'C', 'Q', 'X'};
    s1.insert('B');
    s1.erase('C');

    for (auto itr = s1.begin(); itr != s1.end(); itr++)
    {
        cout << *itr << endl;
    }

    // common letters between 2 statements
    string test = "This is a test statement";
    string find = "find";

    set<char> foundSet;

    for (int i = 0; i < find.length(); i++)
    {
        foundSet.insert(find[i]);
    }

    for (int i = 0; i < test.length(); i++)
    {
        foundSet.erase(test[i]);
    }

    if (foundSet.size() > 0)
    {
        cout << "All elements of <find> are not in <test>";
    }
    else
    {
        cout << "All elements of <find> are in <test>";
    }
}