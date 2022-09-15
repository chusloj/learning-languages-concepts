#include <iostream>
#include <string>
using namespace std;

int main()
{
    // tuple<int, string, char, float> person(20, "test", 'c', 9.0);
    // cout << get<3>(person) << endl;
    // get<2>(person) = 'f';
    // cout << get<2>(person) << endl;

    // cout << "\n";

    // tuple<int, char, bool> thing;
    // thing = make_tuple(23, 'h', true);
    // cout << get<0>(thing);

    // cout << "\n";

    // tuple<int, int> t1 = make_tuple(1, 2);
    // tuple<int, int> t2 = make_tuple(3, 4);
    // cout << get<0>(t1) << endl;
    // cout << get<1>(t1) << endl;
    // cout << get<0>(t2) << endl;
    // cout << get<1>(t2) << endl;

    // t1.swap(t2);
    // cout << get<0>(t1) << endl;
    // cout << get<1>(t1) << endl;
    // cout << get<0>(t2) << endl;
    // cout << get<1>(t2) << endl;

    tuple<int, int> t1 = make_tuple(1, 2);
    int x, y;

    tie(x, y) = t1;
    cout << x << endl;
    cout << y;
}