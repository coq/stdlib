(************************************************************************)
(*         *      The Rocq Prover / The Rocq Development Team           *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** Base-2 Logarithm Properties *)

From Stdlib Require Import NAxioms NSub NPow NParity NZLog.

Module Type NLog2Prop
 (A : NAxiomsSig)
 (B : NSubProp A)
 (C : NParityProp A B)
 (D : NPowProp A B C).

 (** For the moment we simply reuse NZ properties *)

 Include NZLog2Prop A A A B D.Private_NZPow.
 Include NZLog2UpProp A A A B D.Private_NZPow.
End NLog2Prop.
