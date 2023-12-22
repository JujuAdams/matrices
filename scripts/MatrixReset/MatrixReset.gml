// Feather disable all

/// @param [target=world]

function MatrixReset(_target = matrix_world)
{
    static _identityMatrix = matrix_build_identity();
	matrix_set(_target, _identityMatrix);
}