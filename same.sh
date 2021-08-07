function getGcm(a, b) {

	// a < bにする
	if (b > a) {

		c = a;

		a = b;
		b = c;


	}

	gcm = 1;

	// a,b共通の素因数を乗算
	for (i = 2;i <= a;i++) {

		// aとbがともにiで割り切れる間は割り続ける
		while (a % i == 0 && b % i == 0) {

			a /= i;
			b /= i;

			// 今回の除数を乗算
			gcm *= i;

			ex += "*" + i;

		}

	}

	// 結果を返す
	return gcm;

}
