// Feather disable all

/// @param matrix

function MatrixFlipY(_matrix)
{
	_matrix[@  1] = -_matrix[ 1];
	_matrix[@  5] = -_matrix[ 5];
	_matrix[@  9] = -_matrix[ 9];
	_matrix[@ 13] = -_matrix[13];
	return _matrix;
}