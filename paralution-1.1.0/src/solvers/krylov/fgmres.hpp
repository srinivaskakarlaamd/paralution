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


#ifndef PARALUTION_FGMRES_FGMRES_HPP_
#define PARALUTION_FGMRES_FGMRES_HPP_

#include "../solver.hpp"

#include <vector>

namespace paralution {

template <class OperatorType, class VectorType, typename ValueType>
class FGMRES : public IterativeLinearSolver<OperatorType, VectorType, ValueType> {

public:

  FGMRES();
  virtual ~FGMRES();

  virtual void Print(void) const;

  virtual void Build(void);
  virtual void Clear(void);

  /// Set the size of the Krylov-space basis
  virtual void SetBasisSize(const int size_basis);

protected:

  virtual void SolveNonPrecond_(const VectorType &rhs,
                                VectorType *x);
  virtual void SolvePrecond_(const VectorType &rhs,
                             VectorType *x);

  virtual void PrintStart_(void) const;
  virtual void PrintEnd_(void) const;

  virtual void MoveToHostLocalData_(void);
  virtual void MoveToAcceleratorLocalData_(void);

  void GenerateGivensRotation_(const ValueType &x, const ValueType &y,
                                     ValueType &c,       ValueType &s) const;

  void ApplyGivensRotation_(const ValueType &c, const ValueType &s,
                                  ValueType &x,       ValueType &y) const;

  void BackSubstitute_(std::vector<ValueType> &g,
                       const std::vector<ValueType> &H,
                       int k) const;

private:

  VectorType w_;
  VectorType **v_, **z_;

  int size_basis_;

};


}

#endif // PARALUTION_FGMRES_FGMRES_HPP_
