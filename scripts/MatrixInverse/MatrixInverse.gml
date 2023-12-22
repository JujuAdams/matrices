// Feather disable all

/// @desc Returns the inverse of a 4x4 matrix
/// 
/// @param matrix   4x4 matrix to calcuate the inverse of

function MatrixInverse(_matrix)
{
    var _matrix00 = _matrix[ 0];
    var _matrix01 = _matrix[ 1];
    var _matrix02 = _matrix[ 2];
    var _matrix03 = _matrix[ 3];
    var _matrix04 = _matrix[ 4];
    var _matrix05 = _matrix[ 5];
    var _matrix06 = _matrix[ 6];
    var _matrix07 = _matrix[ 7];
    var _matrix08 = _matrix[ 8];
    var _matrix09 = _matrix[ 9];
    var _matrix10 = _matrix[10];
    var _matrix11 = _matrix[11];
    var _matrix12 = _matrix[12];
    var _matrix13 = _matrix[13];
    var _matrix14 = _matrix[14];
    var _matrix15 = _matrix[15];
    
    var _inv = array_create(16, undefined);
    
    _inv[@  0] =  _matrix05*_matrix10*_matrix15 - 
                  _matrix05*_matrix11*_matrix14 - 
                  _matrix09*_matrix06*_matrix15 + 
                  _matrix09*_matrix07*_matrix14 +
                  _matrix13*_matrix06*_matrix11 - 
                  _matrix13*_matrix07*_matrix10;
                
    _inv[@  4] = -_matrix04*_matrix10*_matrix15 + 
                  _matrix04*_matrix11*_matrix14 + 
                  _matrix08*_matrix06*_matrix15 - 
                  _matrix08*_matrix07*_matrix14 - 
                  _matrix12*_matrix06*_matrix11 + 
                  _matrix12*_matrix07*_matrix10;
                
    _inv[@  8] =  _matrix04*_matrix09*_matrix15 - 
                  _matrix04*_matrix11*_matrix13 - 
                  _matrix08*_matrix05*_matrix15 + 
                  _matrix08*_matrix07*_matrix13 + 
                  _matrix12*_matrix05*_matrix11 - 
                  _matrix12*_matrix07*_matrix09;
                
    _inv[@ 12] = -_matrix04*_matrix09*_matrix14 + 
                  _matrix04*_matrix10*_matrix13 +
                  _matrix08*_matrix05*_matrix14 - 
                  _matrix08*_matrix06*_matrix13 - 
                  _matrix12*_matrix05*_matrix10 + 
                  _matrix12*_matrix06*_matrix09;
                
    _inv[@  1] = -_matrix01*_matrix10*_matrix15 + 
                  _matrix01*_matrix11*_matrix14 + 
                  _matrix09*_matrix02*_matrix15 - 
                  _matrix09*_matrix03*_matrix14 - 
                  _matrix13*_matrix02*_matrix11 + 
                  _matrix13*_matrix03*_matrix10;
                
    _inv[@  5] =  _matrix00*_matrix10*_matrix15 - 
                  _matrix00*_matrix11*_matrix14 - 
                  _matrix08*_matrix02*_matrix15 + 
                  _matrix08*_matrix03*_matrix14 + 
                  _matrix12*_matrix02*_matrix11 - 
                  _matrix12*_matrix03*_matrix10;
                
    _inv[@  9] = -_matrix00*_matrix09*_matrix15 + 
                  _matrix00*_matrix11*_matrix13 + 
                  _matrix08*_matrix01*_matrix15 - 
                  _matrix08*_matrix03*_matrix13 - 
                  _matrix12*_matrix01*_matrix11 + 
                  _matrix12*_matrix03*_matrix09;
                
    _inv[@ 13] =  _matrix00*_matrix09*_matrix14 - 
                  _matrix00*_matrix10*_matrix13 - 
                  _matrix08*_matrix01*_matrix14 + 
                  _matrix08*_matrix02*_matrix13 + 
                  _matrix12*_matrix01*_matrix10 - 
                  _matrix12*_matrix02*_matrix09;
                
    _inv[@  2] =  _matrix01*_matrix06*_matrix15 - 
                  _matrix01*_matrix07*_matrix14 - 
                  _matrix05*_matrix02*_matrix15 + 
                  _matrix05*_matrix03*_matrix14 + 
                  _matrix13*_matrix02*_matrix07 - 
                  _matrix13*_matrix03*_matrix06;
                
    _inv[@  6] = -_matrix00*_matrix06*_matrix15 + 
                  _matrix00*_matrix07*_matrix14 + 
                  _matrix04*_matrix02*_matrix15 - 
                  _matrix04*_matrix03*_matrix14 - 
                  _matrix12*_matrix02*_matrix07 + 
                  _matrix12*_matrix03*_matrix06;
                
    _inv[@ 10] =  _matrix00*_matrix05*_matrix15 - 
                  _matrix00*_matrix07*_matrix13 - 
                  _matrix04*_matrix01*_matrix15 + 
                  _matrix04*_matrix03*_matrix13 + 
                  _matrix12*_matrix01*_matrix07 - 
                  _matrix12*_matrix03*_matrix05;
                
    _inv[@ 14] = -_matrix00*_matrix05*_matrix14 + 
                  _matrix00*_matrix06*_matrix13 + 
                  _matrix04*_matrix01*_matrix14 - 
                  _matrix04*_matrix02*_matrix13 - 
                  _matrix12*_matrix01*_matrix06 + 
                  _matrix12*_matrix02*_matrix05;
                
    _inv[@  3] = -_matrix01*_matrix06*_matrix11 + 
                  _matrix01*_matrix07*_matrix10 + 
                  _matrix05*_matrix02*_matrix11 - 
                  _matrix05*_matrix03*_matrix10 - 
                  _matrix09*_matrix02*_matrix07 + 
                  _matrix09*_matrix03*_matrix06;
                
    _inv[@  7] =  _matrix00*_matrix06*_matrix11 - 
                  _matrix00*_matrix07*_matrix10 - 
                  _matrix04*_matrix02*_matrix11 + 
                  _matrix04*_matrix03*_matrix10 + 
                  _matrix08*_matrix02*_matrix07 - 
                  _matrix08*_matrix03*_matrix06;
                
    _inv[@ 11] = -_matrix00*_matrix05*_matrix11 + 
                  _matrix00*_matrix07*_matrix09 + 
                  _matrix04*_matrix01*_matrix11 - 
                  _matrix04*_matrix03*_matrix09 - 
                  _matrix08*_matrix01*_matrix07 + 
                  _matrix08*_matrix03*_matrix05;
                
    _inv[@ 15] =  _matrix00*_matrix05*_matrix10 - 
                  _matrix00*_matrix06*_matrix09 - 
                  _matrix04*_matrix01*_matrix10 + 
                  _matrix04*_matrix02*_matrix09 + 
                  _matrix08*_matrix01*_matrix06 - 
                  _matrix08*_matrix02*_matrix05;

    var _det = _matrix00*_inv[0] + _matrix01*_inv[4] + _matrix02*_inv[8] + _matrix03*_inv[12];
    if (_det == 0)
    {
        show_debug_message("Determinant of the matrix is zero:" + MatrixString(_matrix, " |"));
        return _matrix;
    }

    _det = 1 / _det;
    
    _inv[@  0] *= _det;
    _inv[@  1] *= _det;
    _inv[@  2] *= _det;
    _inv[@  3] *= _det;
    _inv[@  4] *= _det;
    _inv[@  5] *= _det;
    _inv[@  6] *= _det;
    _inv[@  7] *= _det;
    _inv[@  8] *= _det;
    _inv[@  9] *= _det;
    _inv[@ 10] *= _det;
    _inv[@ 11] *= _det;
    _inv[@ 12] *= _det;
    _inv[@ 13] *= _det;
    _inv[@ 14] *= _det;
    _inv[@ 15] *= _det;

    return _inv;
}