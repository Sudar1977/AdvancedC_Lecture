int binpow (int n, int pow) {
    if (pow == 0)
        return 1;
    if ( (pow % 2) == 1) // нечетная степень (pow & 1)
        return binpow (n, pow-1) * n;
    else { // четная степень
        int b = binpow (n, pow/2);// pow>>1
        return b * b;
    }
}
