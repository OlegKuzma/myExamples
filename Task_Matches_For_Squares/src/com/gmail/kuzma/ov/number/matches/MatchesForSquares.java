package com.gmail.kuzma.ov.number.matches;

import java.util.Scanner;

public class MatchesForSquares {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		//Reads the specified number of squares from the console
		long n = scan.nextLong(); 
		// create a square of squares for this find the sqrt of n
		long closest = getClosestSqrt(n); 
		//variable is the minimum number of matches to build squares
		long result; 
		//the minimum number of matches to build a square squares
		long quantityOfParties = 2 * closest * (closest + 1); 
		long emptiness = closest * closest - n; //extra squares
		//variable to calculate the extra matches
		long out = 0;
		if (emptiness < closest) {
			out = emptiness + emptiness;
		} else if (emptiness >= closest) {
			out = emptiness + (emptiness + 1);
		}
		//the minimum number of matches to build squares
		result = quantityOfParties - out;
		System.out.println(result * 2);

	}

	public static long getClosestSqrt(long n) {
		//find the sqrt of n
		long candidate = Math.round(Math.sqrt(n));
		// the condition that n is always placed in our square squares
		if (candidate * candidate >= n) {
			return candidate;
		} else {
			return candidate + 1;
		}

	}
}
