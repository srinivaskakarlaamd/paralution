// **************************************************************************
//
//    PARALUTION   www.paralution.com
//
//    Copyright (C) 2015  PARALUTION Labs UG (haftungsbeschränkt) & Co. KG
//                        Am Hasensprung 6, 76571 Gaggenau
//                        Handelsregister: Amtsgericht Mannheim, HRA 706051
//                        Vertreten durch:
//                        PARALUTION Labs Verwaltungs UG (haftungsbeschränkt)
//                        Am Hasensprung 6, 76571 Gaggenau
//                        Handelsregister: Amtsgericht Mannheim, HRB 721277
//                        Geschäftsführer: Dimitar Lukarski, Nico Trost
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// **************************************************************************



// PARALUTION version 1.1.0 


#ifndef PARALUTION_HOST_MATRIX_DIA_HPP_
#define PARALUTION_HOST_MATRIX_DIA_HPP_

#include "../base_vector.hpp"
#include "../base_matrix.hpp"
#include "../matrix_formats.hpp"

namespace paralution {

template <typename ValueType>
class HostMatrixDIA : public HostMatrix<ValueType> {

public:

  HostMatrixDIA();
  HostMatrixDIA(const Paralution_Backend_Descriptor local_backend);
  virtual ~HostMatrixDIA();

  inline int get_ndiag(void) const { return mat_.num_diag; }

  virtual void info(void) const;
  virtual unsigned int get_mat_format(void) const { return  DIA; }

  virtual void Clear(void);
  virtual void AllocateDIA(const int nnz, const int nrow, const int ncol, const int ndiag);
  virtual void SetDataPtrDIA(int **offset, ValueType **val,
                     const int nnz, const int nrow, const int ncol, const int num_diag);
  virtual void LeaveDataPtrDIA(int **offset, ValueType **val, int &num_diag);

  virtual bool ConvertFrom(const BaseMatrix<ValueType> &mat);

  virtual void CopyFrom(const BaseMatrix<ValueType> &mat);
  virtual void CopyTo(BaseMatrix<ValueType> *mat) const;

  virtual void Apply(const BaseVector<ValueType> &in, BaseVector<ValueType> *out) const;
  virtual void ApplyAdd(const BaseVector<ValueType> &in, const ValueType scalar,
                        BaseVector<ValueType> *out) const;

private:

  MatrixDIA<ValueType, int> mat_;

  friend class BaseVector<ValueType>;
  friend class HostVector<ValueType>;
  friend class HostMatrixCSR<ValueType>;
  friend class HostMatrixCOO<ValueType>;
  friend class HostMatrixELL<ValueType>;
  friend class HostMatrixHYB<ValueType>;
  friend class HostMatrixDENSE<ValueType>;

  friend class GPUAcceleratorMatrixDIA<ValueType>;
  friend class OCLAcceleratorMatrixDIA<ValueType>;
  friend class MICAcceleratorMatrixDIA<ValueType>;

};


}

#endif // PARALUTION_HOST_MATRIX_DIA_HPP_
