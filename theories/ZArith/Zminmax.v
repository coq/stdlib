(************************************************************************)
(*         *      The Rocq Prover / The Rocq Development Team           *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

From Stdlib Require Import Orders BinInt Zcompare Zorder.

(** THIS FILE IS DEPRECATED. *)

(*begin hide*)
(* Compatibility with names of the old Zminmax file *)
Notation Zmin_max_absorption_r_r := Z.min_max_absorption (only parsing).
Notation Zmax_min_absorption_r_r := Z.max_min_absorption (only parsing).
Notation Zmax_min_distr_r := Z.max_min_distr (only parsing).
Notation Zmin_max_distr_r := Z.min_max_distr (only parsing).
Notation Zmax_min_modular_r := Z.max_min_modular (only parsing).
Notation Zmin_max_modular_r := Z.min_max_modular (only parsing).
Notation max_min_disassoc := Z.max_min_disassoc (only parsing).
(*end hide*)
