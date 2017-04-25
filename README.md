# ECG-signal-reduction
Problem statement : 
To Design a band stop filter to filter out 50 Hz noise from a sampled ECG signal.

Functions used:

1 . HAMMING

	Syntax : w = hamming(L)
	Returns an L-point symmetric Hamming window in the column vector w.L should be a positive integer . The window length is L=N+1 .


2 . FIR1

	Window based  Fir filter design
	Syntax : b = fir1(n,Wn,ftype,window)
	n: filter order
	Wn : frequency constraints
	Ftype : filter type
	Window : window specified as a vector.
	b : filter coefficients


3 .  FREQZ

	Frequency response of digital filter
	Syntax : [ h , w ] = freqz ( b , a , n )
	h : frequency response
	w : angular frequencies
	b , a : transfer function coefficient
	n : number of evaluation points

4 .  UNWRAP

	Correct phase angles to produce smoother phase plots
	Syntax : Q = unwrap(P)
	It corrects the radian phase angles in a vector P by adding multiples of ±2π when absolute jumps between consecutive elements of P are greater than or equal to the default jump tolerance of π radians. 
	If P is a matrix, unwrap operates columnwise. If P is a multidimensional array, unwrap operates on the first nonsingleton dimension.

5 .  FILTER
