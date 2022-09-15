#include <iostream>
#include <string>
#include <map>
using namespace std;

int main()
{
    map<char, int> mp = {
        {'a', 1},
        {'b', 2}};
    // cout << mp['b'] << endl;

    mp['u'] = 9;
    mp.insert(pair<char, int>('j', 5));
    // cout << mp['j'] << endl;
    // cout << mp.size() << endl;

    // mp.clear();

    // iterate
    for (map<char, int>::iterator itr = mp.begin(); itr != mp.end(); ++itr)
    {
        cout << itr->first << endl;
        cout << itr->second << endl;
    }

    // count character frequency
    string test = "Hello world my name is Joshhhhhh.";

    map<char, int> freq;

    for (int i = 0; i < test.length(); i++)
    {
        freq[test[i]]++;
    }

    for (map<char, int>::iterator itr = freq.begin(); itr != freq.end(); ++itr)
    {
        cout << itr->first << ": " << itr->second << endl;
    }
}