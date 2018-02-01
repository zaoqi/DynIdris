--    DynIdris
--    Copyright (C) 2018  Zaoqi

--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU Affero General Public License as published
--    by the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.

--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU Affero General Public License for more details.

--    You should have received a copy of the GNU Affero General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.
module Dyn
data PairO : Type -> Type -> Type where
	Cons : Lazy a -> Lazy b -> PairO a b

cons : Lazy a -> Lazy b -> PairO a b
cons = Cons
car : PairO a d -> a
car (Cons a d) = a
cdr : PairO a d -> d
cdr (Cons a d) = d

interface PairI x where
PairI (PairO a d) where

