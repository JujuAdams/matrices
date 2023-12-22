// Feather disable all

/// @param matrix

function MatrixFlipX(_matrix)
{
	_matrix[@  0] = -_matrix[ 0];
	_matrix[@  4] = -_matrix[ 4];
	_matrix[@  8] = -_matrix[ 8];
	_matrix[@ 12] = -_matrix[12];
	return _matrix;
}