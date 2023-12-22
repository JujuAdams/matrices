/// @param matrix
/// @param [target=world]

function MatrixMultiply(_matrix, _target = matrix_world)
{
	_matrix = matrix_multiply(matrix_get(_target), _matrix);
	matrix_set(_target, _matrix);
	return _matrix;
}